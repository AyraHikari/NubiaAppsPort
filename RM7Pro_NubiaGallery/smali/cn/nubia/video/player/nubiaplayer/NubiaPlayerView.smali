.class public Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;
.super Lcn/nubia/video/player/ViewBase;
.source "NubiaPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;,
        Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$MyAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NubiaPlayerView"


# instance fields
.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private final mHideAnimation:Landroid/view/animation/Animation;

.field private mHideRunnable:Ljava/lang/Runnable;

.field private mIsClip:Z

.field private mIsPlaySpeedEdit:Z

.field private mIsTrimVideo:Z

.field private mIsWallPaper:Z

.field private mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

.field private mPlaySpeed:Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;

.field private final mProgressChecker:Ljava/lang/Runnable;

.field private mSeekTime:I

.field private mSliderBarEndTime:I

.field private mSliderBarStartTime:I

.field private mToast:Lcn/nubia/gallery3d/video/VideoToast;

.field private mVideoPath:Ljava/lang/String;

.field private mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

.field private mhasNextItem:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;Z)V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcn/nubia/video/player/ViewBase;-><init>()V

    .line 31
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarStartTime:I

    .line 39
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    .line 40
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSeekTime:I

    .line 41
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsClip:Z

    .line 42
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsPlaySpeedEdit:Z

    .line 43
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsWallPaper:Z

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mhasNextItem:Z

    .line 46
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsTrimVideo:Z

    .line 287
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$7;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$7;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHideRunnable:Ljava/lang/Runnable;

    .line 418
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$8;

    invoke-direct {p2, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$8;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mProgressChecker:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mContext:Landroid/content/Context;

    .line 52
    iput-object p4, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    .line 53
    iput-boolean p5, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsWallPaper:Z

    .line 54
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    invoke-direct {p2, p0, p3}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/view/View;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    .line 55
    new-instance p2, Lcn/nubia/gallery3d/video/VideoToast;

    invoke-direct {p2, p1}, Lcn/nubia/gallery3d/video/VideoToast;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mToast:Lcn/nubia/gallery3d/video/VideoToast;

    .line 56
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mContext:Landroid/content/Context;

    const p2, 0x7f01002d

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHideAnimation:Landroid/view/animation/Animation;

    .line 57
    new-instance p2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$MyAnimationListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$MyAnimationListener;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;)V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 59
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setListener()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setProgress()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$1300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$1400(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$1500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$1600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/TextView;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setText(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$1800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$1900(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->keepShow()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsWallPaper:Z

    return p0
.end method

.method static synthetic access$2000(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$2100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$2200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$2300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$2400(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$2500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsTrimVideo:Z

    return p0
.end method

.method static synthetic access$2600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2700(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestrueProgressLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Ljava/lang/Runnable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mProgressChecker:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2900(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    return-object p0
.end method

.method static synthetic access$3000(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$3102(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3202(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p1
.end method

.method static synthetic access$3300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3400(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3502(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$3600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3702(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestureVolume:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$3800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3902(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestureVolumeBG:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$400(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsClip:Z

    return p0
.end method

.method static synthetic access$4000(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsClip:Z

    return p1
.end method

.method static synthetic access$4100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$4202(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestrueProgress:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$4300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4402(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestrueProgressLayout:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$4500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestrueProgressLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$4700(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    return p0
.end method

.method static synthetic access$600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsPlaySpeedEdit:Z

    return p0
.end method

.method static synthetic access$602(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsPlaySpeedEdit:Z

    return p1
.end method

.method static synthetic access$700(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSeekTime:I

    return p0
.end method

.method static synthetic access$802(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSeekTime:I

    return p1
.end method

.method static synthetic access$900(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Lcn/nubia/video/player/VideoView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    return-object p0
.end method

.method private keepShow()V
    .locals 2

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsHide:Z

    .line 388
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setListener()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mTrimConfirm:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$1;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mTrimCancel:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$2;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$2;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$3;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$4;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$4;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$5;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setListener(Lcn/nubia/video/player/nubiaplayer/SeekBarView$Listener;)V

    .line 215
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    new-instance v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$6;-><init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)V

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setListener(Lcn/nubia/video/player/nubiaplayer/SliderBar$Listener;)V

    return-void
.end method

.method private setProgress()V
    .locals 4

    .line 476
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 479
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    .line 480
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setMax(I)V

    .line 481
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setSliderTimes()V

    .line 484
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    if-nez v0, :cond_1

    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v0

    .line 489
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mPlaySpeed:Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->supportPlaySpeedShift()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mPlaySpeed:Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v2, v2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v3, v3, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->setTime(III)V

    .line 493
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setProgress(I)V

    return-void
.end method

.method private setSliderBarVisibility(I)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setVisibility(I)V

    return-void
.end method

.method private setSliderTimes()V
    .locals 4

    .line 499
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->supportPlaySpeedShift()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarStartTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getPlaySpeedChangeStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarStartTime:I

    goto :goto_0

    .line 503
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarStartTime:I

    .line 505
    :goto_0
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    if-ne v0, v1, :cond_1

    .line 506
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getPlaySpeedChangeEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    goto :goto_1

    .line 508
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    .line 510
    :goto_1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarStartTime:I

    if-ltz v0, :cond_2

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    if-ltz v1, :cond_2

    .line 511
    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarStartTime:I

    .line 512
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    .line 513
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarStartTime:I

    iget v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    iget v3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setTimes(III)V

    goto :goto_2

    .line 515
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    div-int/lit8 v2, v1, 0x4

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v2, v3, v1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->setTimes(III)V

    .line 516
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarStartTime:I

    .line 517
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSliderBarEndTime:I

    :cond_3
    :goto_2
    return-void
.end method

.method private setText(Landroid/widget/TextView;I)V
    .locals 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 299
    div-int/lit16 p2, p2, 0x3e8

    div-int/lit8 v0, p2, 0x3c

    .line 300
    rem-int/lit8 p2, p2, 0x3c

    const-string v1, ""

    const-string v2, "0"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-ge p2, v3, :cond_1

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 310
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private startHideAnimation(Landroid/view/View;)V
    .locals 1

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBottomRect()Landroid/graphics/Rect;
    .locals 1

    .line 585
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getTopRect()Landroid/graphics/Rect;
    .locals 1

    .line 578
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method protected getTrimEndPos()I
    .locals 1

    .line 318
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsClip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipRightTime()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method protected getTrimStartPos()I
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsClip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public hide()V
    .locals 2

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsHide:Z

    .line 376
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestrueProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public isClip()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsClip:Z

    return v0
.end method

.method public isHide()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsHide:Z

    return v0
.end method

.method public onDefaultTrim()V
    .locals 5

    .line 437
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mListener:Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v2, v2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v3, v3, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {v3}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v4, v1, v2, v3}, Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;->onTrim(IIII)V

    return-void
.end method

.method public onEndGestrue()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestureVolumeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->startHideAnimation(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mGestrueProgressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->startHideAnimation(Landroid/view/View;)V

    .line 406
    invoke-super {p0}, Lcn/nubia/video/player/ViewBase;->onEndGestrue()V

    return-void
.end method

.method public onFinish(Z)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    .line 346
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setProgress(I)V

    .line 347
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mSeekTime:I

    :cond_0
    return-void
.end method

.method public onPlaying()V
    .locals 4

    .line 431
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setProgress()V

    .line 432
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 433
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mProgressChecker:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onPrepared()V
    .locals 4

    const/4 v0, 0x0

    .line 441
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mDuration:I

    const/4 v1, 0x0

    .line 442
    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mPlaySpeed:Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;

    .line 443
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 445
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 446
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 447
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mPlaySpeed:Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 448
    new-instance v1, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mPlaySpeed:Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;

    .line 449
    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->supportPlaySpeedShift()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mPlaySpeed:Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/PlaySpeedSettings;->getSlomoVideoType()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 450
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setSliderBarVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 452
    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setSliderBarVisibility(I)V

    .line 455
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mContext:Landroid/content/Context;

    check-cast v1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v1}, Lcn/nubia/video/player/PlayerActivity;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/video/player/common/Utils;->getAbsPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mContext:Landroid/content/Context;

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    :cond_2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 460
    :cond_3
    iput-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoPath:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setMediaPath(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoPath:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "/"

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRIM_"

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 465
    iput-boolean v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mIsTrimVideo:Z

    :cond_4
    return-void
.end method

.method public onRelease()V
    .locals 2

    const/4 v0, 0x1

    .line 352
    invoke-virtual {p0, v0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->onFinish(Z)V

    .line 353
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mProgressChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setTrimEndPos()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mEndClip:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipRightTime()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setText(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected setTrimPos()V
    .locals 3

    .line 330
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mEndClip:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipRightTime()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v2, v2, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setText(Landroid/widget/TextView;I)V

    return-void
.end method

.method protected setTrimStartPos()V
    .locals 2

    .line 322
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mHeadClip:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v1, v1, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->setText(Landroid/widget/TextView;I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 383
    invoke-direct {p0}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->keepShow()V

    return-void
.end method

.method public startHide()V
    .locals 4

    .line 370
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 371
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updatePlayPause()V
    .locals 3

    .line 358
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mLoading:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 362
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setClipIsPlay(Z)V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    const v2, 0x7f0801dd

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 365
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->mViewHolder:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setClipIsPlay(Z)V

    :goto_0
    return-void
.end method
