.class public Lcn/nubia/gallery3d/video/ui/PlayerController;
.super Ljava/lang/Object;
.source "PlayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/video/ui/PlayerController$TurnoverListener;,
        Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayerController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDurationTime:I

.field private mHandler:Landroid/os/Handler;

.field private mIsClip:Z

.field private mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

.field private mPath:Landroid/net/Uri;

.field private mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

.field private mPlayMotion:Lcn/nubia/video/player/common/PlayMotion;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mSeekTime:I

.field private mStartProgressChecker:Z

.field private mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

.field private mVideoStatusListener:Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

.field private setStartPlay:Z


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Lcn/nubia/gallery3d/ui/PhotoView;Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    .line 34
    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    .line 35
    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 36
    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoStatusListener:Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    .line 37
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 38
    iput v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mDurationTime:I

    .line 39
    iput v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mSeekTime:I

    .line 40
    iput v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mCurrentPosition:I

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mIsClip:Z

    .line 42
    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPath:Landroid/net/Uri;

    .line 44
    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPlayMotion:Lcn/nubia/video/player/common/PlayMotion;

    .line 45
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mStartProgressChecker:Z

    .line 46
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->setStartPlay:Z

    .line 290
    new-instance v1, Lcn/nubia/gallery3d/video/ui/PlayerController$3;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/video/ui/PlayerController$3;-><init>(Lcn/nubia/gallery3d/video/ui/PlayerController;)V

    iput-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mProgressChecker:Ljava/lang/Runnable;

    .line 53
    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    .line 55
    invoke-virtual {p2}, Lcn/nubia/gallery3d/ui/PhotoView;->getNewSeekBarView()Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    .line 56
    iput-object p3, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoStatusListener:Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    .line 57
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setListener()V

    .line 58
    new-instance p1, Lcn/nubia/gallery3d/video/VideoPlayer;

    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcn/nubia/gallery3d/video/VideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    .line 59
    new-instance p1, Lcn/nubia/video/player/common/PlayMotion;

    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mContext:Landroid/content/Context;

    new-instance p3, Lcn/nubia/gallery3d/video/ui/PlayerController$TurnoverListener;

    invoke-direct {p3, p0, v0}, Lcn/nubia/gallery3d/video/ui/PlayerController$TurnoverListener;-><init>(Lcn/nubia/gallery3d/video/ui/PlayerController;Lcn/nubia/gallery3d/video/ui/PlayerController$1;)V

    invoke-direct {p1, p2, p3}, Lcn/nubia/video/player/common/PlayMotion;-><init>(Landroid/content/Context;Lcn/nubia/video/player/common/PlayMotion$Listener;)V

    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPlayMotion:Lcn/nubia/video/player/common/PlayMotion;

    .line 60
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setMediaNotify()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/VideoPlayer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/gallery3d/video/ui/PlayerController;)I
    .locals 0

    .line 30
    iget p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mDurationTime:I

    return p0
.end method

.method static synthetic access$1002(Lcn/nubia/gallery3d/video/ui/PlayerController;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mDurationTime:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/gallery3d/video/ui/PlayerController;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setSeekBarProgress(I)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/video/ui/PlayerController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mStartProgressChecker:Z

    return p0
.end method

.method static synthetic access$202(Lcn/nubia/gallery3d/video/ui/PlayerController;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mStartProgressChecker:Z

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/NewSeekBarView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    return-object p0
.end method

.method static synthetic access$400(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/ui/PhotoView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/gallery3d/video/ui/PlayerController;)Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoStatusListener:Lcn/nubia/gallery3d/video/ui/PlayerController$VideoStatusListener;

    return-object p0
.end method

.method static synthetic access$600(Lcn/nubia/gallery3d/video/ui/PlayerController;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->setStartPlay:Z

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/gallery3d/video/ui/PlayerController;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->setStartPlay:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/gallery3d/video/ui/PlayerController;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/gallery3d/video/ui/PlayerController;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mProgressChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcn/nubia/gallery3d/video/ui/PlayerController;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private setListener()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    new-instance v1, Lcn/nubia/gallery3d/video/ui/PlayerController$1;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/video/ui/PlayerController$1;-><init>(Lcn/nubia/gallery3d/video/ui/PlayerController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setListener(Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;)V

    return-void
.end method

.method private setMediaNotify()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    new-instance v1, Lcn/nubia/gallery3d/video/ui/PlayerController$2;

    invoke-direct {v1, p0}, Lcn/nubia/gallery3d/video/ui/PlayerController$2;-><init>(Lcn/nubia/gallery3d/video/ui/PlayerController;)V

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->setOnNotifyMediaStateListener(Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;)V

    return-void
.end method

.method private setSeekBarProgress(I)V
    .locals 2

    .line 306
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mDurationTime:I

    if-lez v1, :cond_0

    .line 307
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setMax(I)V

    .line 308
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setProgress(I)V

    .line 309
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->setTime(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getCurrentState()I
    .locals 1

    .line 314
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaPath()Landroid/net/Uri;
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getMediaPath()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoInfo()Lcn/nubia/video/editor/VideoTrimInfo;
    .locals 3

    .line 321
    new-instance v0, Lcn/nubia/video/editor/VideoTrimInfo;

    invoke-direct {v0}, Lcn/nubia/video/editor/VideoTrimInfo;-><init>()V

    .line 322
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getFrameRate()I

    move-result v1

    iput v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->frameRate:I

    .line 324
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getDuration()I

    move-result v1

    iput v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->duration:I

    .line 325
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->isSupportPlaySpeedShift()Z

    move-result v1

    iput-boolean v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    .line 326
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getRotation()I

    move-result v1

    iput v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->rotation:I

    .line 327
    iget-boolean v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->isSlomoVideo:Z

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getPlaySpeedChangeStartTime()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->startSpeedChange:J

    .line 329
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getPlaySpeedChangeEndTime()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcn/nubia/video/editor/VideoTrimInfo;->endSpeedChange:J

    :cond_0
    return-object v0
.end method

.method public onPause()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mCurrentPosition:I

    .line 260
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v1, v0, v2}, Lcn/nubia/gallery3d/video/VideoPlayer;->seekTo(IZ)V

    .line 261
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setProgress(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    .line 264
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mCurrentPosition:I

    .line 265
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v1, v0, v2}, Lcn/nubia/gallery3d/video/VideoPlayer;->seekTo(IZ)V

    .line 266
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayPause()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    .line 248
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setPlayOrPause(Z)V

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->start()V

    .line 251
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setPlayOrPause(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->release()V

    .line 274
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPhotoView:Lcn/nubia/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->ReleaseSurfaceTexture()V

    .line 275
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mNewSeekBarView:Lcn/nubia/gallery3d/video/ui/NewSeekBarView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 276
    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setProgress(I)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPlayMotion:Lcn/nubia/video/player/common/PlayMotion;

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Lcn/nubia/video/player/common/PlayMotion;->release()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 229
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mSeekTime:I

    if-ltz v0, :cond_0

    .line 230
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcn/nubia/gallery3d/video/VideoPlayer;->seekTo(IZ)V

    const/4 v0, -0x1

    .line 231
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mSeekTime:I

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->resume()V

    :cond_1
    return-void
.end method

.method public onResumePausePosition()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mCurrentPosition:I

    const/4 v1, -0x1

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_1

    .line 218
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mSeekTime:I

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    .line 219
    invoke-virtual {v0, v1, v2}, Lcn/nubia/gallery3d/video/VideoPlayer;->seekTo(IZ)V

    const/4 v0, -0x1

    .line 220
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mSeekTime:I

    .line 222
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->start()V

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/video/ui/PlayerController;->setSeekBarProgress(I)V

    :cond_1
    return-void
.end method

.method public openVideoPlayer(Landroid/net/Uri;Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)I
    .locals 1

    .line 72
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mPath:Landroid/net/Uri;

    .line 73
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->openVideo(Landroid/net/Uri;Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)I

    move-result p1

    return p1
.end method

.method public setAudioTrack()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->setAudioTrack()V

    :cond_0
    return-void
.end method

.method public setDecoder()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 344
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->setStartPlay:Z

    .line 345
    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->setDecoder()V

    :cond_0
    return-void
.end method

.method public setSurfaceTextureScreenNail(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/PlayerController;->mVideoPlayer:Lcn/nubia/gallery3d/video/VideoPlayer;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->setSurfaceTexture(Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)V

    :cond_0
    return-void
.end method
