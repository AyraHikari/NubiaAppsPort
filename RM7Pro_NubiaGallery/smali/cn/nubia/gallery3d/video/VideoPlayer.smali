.class public Lcn/nubia/gallery3d/video/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoPlayer"


# instance fields
.field private final PLAYSPEED_NORMAL:I

.field private final PLAYSPEED_QUARTER:I

.field private mAndioTrackIndex:I

.field private mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

.field private mCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mCurrentTimeMS:I

.field private mDialog:Lcn/nubia/commonui/app/Dialog;

.field private mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

.field private mFrameRate:I

.field private mInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

.field private mIsPause:Z

.field private mIsSeeking:Z

.field private mIsSlomoVideo:Z

.field private mIsVideoPicture:Z

.field private mLastPlaySpeed:I

.field private mLock:Ljava/lang/Object;

.field private mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

.field private mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

.field private mOnSeekCompleteListener:Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;

.field private mPath:Landroid/net/Uri;

.field private mPlayerType:I

.field mPreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

.field private mRotation:I

.field mSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mVst:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    .line 32
    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPath:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 33
    iput v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVideoWidth:I

    .line 34
    iput v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVideoHeight:I

    .line 35
    iput v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentTimeMS:I

    .line 36
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsPause:Z

    .line 37
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsVideoPicture:Z

    .line 39
    iput v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    .line 40
    iput v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->PLAYSPEED_NORMAL:I

    const/4 v2, 0x1

    .line 41
    iput v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->PLAYSPEED_QUARTER:I

    const/4 v2, -0x1

    .line 42
    iput v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLastPlaySpeed:I

    .line 44
    iput v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mFrameRate:I

    .line 45
    iput v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mRotation:I

    .line 46
    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    .line 47
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsSeeking:Z

    .line 48
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsSlomoVideo:Z

    .line 49
    iput v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAndioTrackIndex:I

    .line 50
    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mDialog:Lcn/nubia/commonui/app/Dialog;

    .line 51
    iput v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPlayerType:I

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLock:Ljava/lang/Object;

    .line 53
    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVst:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    .line 157
    new-instance v0, Lcn/nubia/gallery3d/video/VideoPlayer$1;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$1;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    .line 169
    new-instance v0, Lcn/nubia/gallery3d/video/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$2;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    .line 183
    new-instance v0, Lcn/nubia/gallery3d/video/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$3;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mOnSeekCompleteListener:Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;

    .line 192
    new-instance v0, Lcn/nubia/gallery3d/video/VideoPlayer$4;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$4;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    .line 207
    new-instance v0, Lcn/nubia/gallery3d/video/VideoPlayer$5;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$5;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    .line 215
    new-instance v0, Lcn/nubia/gallery3d/video/VideoPlayer$6;

    invoke-direct {v0, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$6;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    .line 55
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->setAudioFocus()V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/video/VideoPlayer;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVideoWidth:I

    return p0
.end method

.method static synthetic access$002(Lcn/nubia/gallery3d/video/VideoPlayer;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/video/VideoPlayer;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVideoHeight:I

    return p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/video/VideoPlayer;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->closeDialog()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/gallery3d/video/VideoPlayer;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/video/VideoPlayer;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/nubia/gallery3d/video/VideoPlayer;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPlayerType:I

    return p0
.end method

.method static synthetic access$1202(Lcn/nubia/gallery3d/video/VideoPlayer;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPlayerType:I

    return p1
.end method

.method static synthetic access$1302(Lcn/nubia/gallery3d/video/VideoPlayer;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentTimeMS:I

    return p1
.end method

.method static synthetic access$1400(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVst:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/gallery3d/video/VideoPlayer;)Landroid/net/Uri;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPath:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/video/VideoPlayer;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/gallery3d/video/VideoPlayer;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/gallery3d/video/VideoPlayer;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsSeeking:Z

    return p1
.end method

.method static synthetic access$502(Lcn/nubia/gallery3d/video/VideoPlayer;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLastPlaySpeed:I

    return p1
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/video/VideoPlayer;)Landroid/content/Context;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/AudioFocus;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/video/VideoPlayer;)I
    .locals 0

    .line 27
    iget p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAndioTrackIndex:I

    return p0
.end method

.method static synthetic access$802(Lcn/nubia/gallery3d/video/VideoPlayer;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAndioTrackIndex:I

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/video/player/common/IMediaPlayer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    return-object p0
.end method

.method private closeDialog()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 512
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mDialog:Lcn/nubia/commonui/app/Dialog;

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v1}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 514
    iput-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mDialog:Lcn/nubia/commonui/app/Dialog;

    .line 516
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

.method private createDialog(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 2

    .line 520
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mDialog:Lcn/nubia/commonui/app/Dialog;

    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v1}, Lcn/nubia/commonui/app/Dialog;->dismiss()V

    const/4 v1, 0x0

    .line 523
    iput-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mDialog:Lcn/nubia/commonui/app/Dialog;

    .line 525
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mDialog:Lcn/nubia/commonui/app/Dialog;

    .line 526
    invoke-virtual {p1}, Lcn/nubia/commonui/app/Dialog;->show()V

    .line 527
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private init()V
    .locals 1

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLastPlaySpeed:I

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsSeeking:Z

    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .line 331
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

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

.method private setAudioFocus()V
    .locals 3

    .line 415
    new-instance v0, Lcn/nubia/gallery3d/video/AudioFocus;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/gallery3d/video/VideoPlayer$7;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$7;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/video/AudioFocus;-><init>(Landroid/content/Context;Lcn/nubia/gallery3d/video/AudioFocus$Listener;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPreparedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    invoke-interface {v0, v1}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnPreparedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;)V

    .line 61
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mSizeChangedListener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-interface {v0, v1}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnVideoSizeChangedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;)V

    .line 62
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCompletionListener:Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    invoke-interface {v0, v1}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnCompletionListener(Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;)V

    .line 63
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mErrorListener:Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    invoke-interface {v0, v1}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnErrorListener(Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;)V

    .line 64
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mInfoListener:Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;

    invoke-interface {v0, v1}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnInfoListener(Lcn/nubia/video/player/common/IMediaPlayer$OnInfoListener;)V

    .line 65
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mOnSeekCompleteListener:Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, v1}, Lcn/nubia/video/player/common/IMediaPlayer;->setOnSeekCompleteListener(Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;)V

    return-void
.end method

.method private setPlaySpeedShift(I)V
    .locals 2

    .line 356
    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLastPlaySpeed:I

    if-ne p1, v0, :cond_0

    return-void

    .line 358
    :cond_0
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLastPlaySpeed:I

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_3

    .line 361
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->getFrameRate()I

    move-result p1

    if-eqz p1, :cond_1

    const/high16 v0, 0x41f00000    # 30.0f

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    cmpl-float p1, v0, v1

    if-ltz p1, :cond_2

    const/high16 v1, 0x3e800000    # 0.25f

    goto :goto_1

    :cond_2
    move v1, v0

    .line 367
    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->setPlaySpeed(F)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, -0x1

    .line 368
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mLastPlaySpeed:I

    :cond_4
    return-void
.end method


# virtual methods
.method public changeDecoder(ILcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V
    .locals 0

    .line 73
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPlayerType:I

    .line 74
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPath:Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->openVideo(Landroid/net/Uri;Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)I

    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .line 310
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 317
    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 303
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 399
    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mFrameRate:I

    return v0
.end method

.method public getMediaPath()Landroid/net/Uri;
    .locals 1

    .line 134
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPath:Landroid/net/Uri;

    return-object v0
.end method

.method public getPlaySpeed()F
    .locals 1

    .line 348
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

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

    .line 411
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

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

    .line 407
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->getPlaySpeedChangeStartTime()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 403
    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mRotation:I

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 340
    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVideoHeight:I

    return v0
.end method

.method public getVideoType()I
    .locals 1

    .line 69
    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPlayerType:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 336
    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVideoWidth:I

    return v0
.end method

.method public isNubiaVpFile()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsVideoPicture:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 327
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

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

.method public isSupportPlaySpeedShift()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsSlomoVideo:Z

    return v0
.end method

.method public openVideo(Landroid/net/Uri;Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)I
    .locals 9

    const/4 v0, -0x1

    const-string v1, "VideoPlayer"

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open video path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->init()V

    .line 89
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPath:Landroid/net/Uri;

    .line 90
    iput-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVst:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    .line 91
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->release()V

    .line 93
    :try_start_0
    iget-object v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    :cond_1
    invoke-static {v2}, Lcn/nubia/nubiavideopicture/VideoPicture;->isNubiaVpFile(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsVideoPicture:Z

    if-eqz v3, :cond_2

    .line 99
    new-instance v3, Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-direct {v3}, Lcn/nubia/video/player/common/AndroidPlayer;-><init>()V

    iput-object v3, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    goto :goto_0

    .line 101
    :cond_2
    iget-object v3, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    iget v4, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPlayerType:I

    iget-object v5, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPath:Landroid/net/Uri;

    invoke-static {v3, v4, v5}, Lcn/nubia/video/player/common/PlayerManager;->getMediaPlayer(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/player/common/IMediaPlayer;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    .line 102
    invoke-static {}, Lcn/nubia/video/player/common/PlayerManager;->getPlayerMode()I

    move-result v3

    iput v3, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPlayerType:I

    .line 103
    invoke-static {}, Lcn/nubia/video/player/common/PlayerManager;->isSlomoVideo()Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsSlomoVideo:Z

    .line 106
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->setListener()V

    .line 107
    iget-boolean v3, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsVideoPicture:Z

    if-eqz v3, :cond_3

    const-string p1, "isNubiaVpFile"

    .line 108
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 111
    iget-object v3, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 112
    invoke-static {v2}, Lcn/nubia/nubiavideopicture/VideoPicture;->getVpVideoOffset(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v2}, Lcn/nubia/nubiavideopicture/VideoPicture;->getVpVideoLength(Ljava/lang/String;)J

    move-result-wide v7

    .line 111
    invoke-interface/range {v3 .. v8}, Lcn/nubia/video/player/common/IMediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 113
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    .line 115
    :cond_3
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    iget-object v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcn/nubia/video/player/common/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 117
    :goto_1
    invoke-virtual {p0, p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->setSurfaceTexture(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V

    .line 118
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lcn/nubia/video/player/common/IMediaPlayer;->setAudioStreamType(I)V

    .line 119
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p1}, Lcn/nubia/video/player/common/IMediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 129
    iput p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    const/4 p1, 0x0

    return p1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return v0

    :catch_1
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    return v0

    .line 84
    :cond_4
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path or vst is null:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public pause()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->releaseAudioFocus()V

    .line 254
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->pause()V

    .line 255
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x4

    .line 257
    iput v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    .line 258
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v1, :cond_0

    .line 259
    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-eqz v0, :cond_1

    const-string v0, "VideoPlayer"

    const-string v1, "release"

    .line 283
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsVideoPicture:Z

    .line 285
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-eqz v1, :cond_0

    .line 286
    invoke-interface {v1}, Lcn/nubia/video/player/common/IMediaPlayer;->stop()V

    .line 287
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcn/nubia/video/player/common/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 288
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v1}, Lcn/nubia/video/player/common/IMediaPlayer;->reset()V

    .line 289
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v1}, Lcn/nubia/video/player/common/IMediaPlayer;->release()V

    .line 290
    iput-object v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    .line 292
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/AudioFocus;->releaseAudioFocus()V

    .line 293
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 295
    iput v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    .line 296
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v1, :cond_1

    .line 297
    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .line 266
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mIsPause:Z

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->getAudioFocus()V

    .line 271
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->resume()V

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x3

    .line 274
    iput v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    .line 275
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v1, :cond_1

    .line 276
    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    :cond_1
    return-void
.end method

.method public seekTo(IZ)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->isInPlaybackState()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 322
    iget-object p2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {p2, p1}, Lcn/nubia/video/player/common/IMediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setAudioTrack()V
    .locals 5

    .line 427
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcn/nubia/video/player/common/IMediaPlayer;->getAudioTrackCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 432
    new-instance v0, Lcn/nubia/gallery3d/video/VideoToast;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100170

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoToast;->showToast(I)V

    return-void

    .line 435
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt v1, v0, :cond_2

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio/und"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_2
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 440
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f11012a

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f1001e2

    .line 441
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 443
    iget v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAndioTrackIndex:I

    new-instance v3, Lcn/nubia/gallery3d/video/VideoPlayer$8;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$8;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 461
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    const v2, 0x7f10004e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/nubia/gallery3d/video/VideoPlayer$9;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$9;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 470
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->createDialog(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setDecoder()V
    .locals 4

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    const v2, 0x7f100074

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    const v2, 0x7f100075

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 480
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 481
    new-instance v1, Lcn/nubia/commonui/app/AlertDialog$Builder;

    iget-object v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f11012a

    invoke-direct {v1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f100076

    .line 482
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 484
    iget v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mPlayerType:I

    new-instance v3, Lcn/nubia/gallery3d/video/VideoPlayer$10;

    invoke-direct {v3, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$10;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 500
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    const v2, 0x7f10004e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcn/nubia/gallery3d/video/VideoPlayer$11;

    invoke-direct {v2, p0}, Lcn/nubia/gallery3d/video/VideoPlayer$11;-><init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 507
    invoke-direct {p0, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->createDialog(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setOnNotifyMediaStateListener(Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    return-void
.end method

.method public setPlaySpeed(F)Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0, p1}, Lcn/nubia/video/player/common/IMediaPlayer;->setPlaySpeed(F)Z

    move-result p1

    return p1
.end method

.method public setSurfaceTexture(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 146
    invoke-interface {v0, p1}, Lcn/nubia/video/player/common/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 147
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVst:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    goto :goto_0

    .line 149
    :cond_1
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 150
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v1, v0}, Lcn/nubia/video/player/common/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 151
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 152
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mVst:Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    :goto_0
    return-void
.end method

.method public setTime(I)V
    .locals 4

    .line 373
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->isSupportPlaySpeedShift()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getPlaySpeedChangeStartTime()I

    move-result v0

    .line 376
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getPlaySpeedChangeEndTime()I

    move-result v1

    if-gez v0, :cond_1

    if-gez v1, :cond_1

    .line 378
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getDuration()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 379
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getDuration()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    .line 380
    iget-object v2, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    const/4 v3, -0x1

    invoke-interface {v2, v0, v1, v3}, Lcn/nubia/video/player/common/IMediaPlayer;->setPlaySpeedChangeTime(III)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getPlaySpeedChangeStartTime()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 383
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getPlaySpeedChangeEndTime()I

    move-result v0

    if-gt p1, v0, :cond_2

    const/4 p1, 0x1

    .line 384
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->setPlaySpeedShift(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 386
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->setPlaySpeedShift(I)V

    :goto_0
    return-void
.end method

.method public setTime(III)V
    .locals 0

    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 p1, 0x1

    .line 392
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->setPlaySpeedShift(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 394
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->setPlaySpeedShift(I)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->getAudioFocus()V

    .line 234
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaPlayer:Lcn/nubia/video/player/common/IMediaPlayer;

    invoke-interface {v0}, Lcn/nubia/video/player/common/IMediaPlayer;->start()V

    .line 235
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x3

    .line 238
    iput v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentState:I

    .line 239
    iget-object v1, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mMediaStateListener:Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    if-eqz v1, :cond_0

    .line 240
    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    .line 243
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentTimeMS:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 244
    invoke-virtual {p0, v0, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->seekTo(IZ)V

    const/4 v0, 0x0

    .line 245
    iput v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer;->mCurrentTimeMS:I

    :cond_1
    return-void
.end method
