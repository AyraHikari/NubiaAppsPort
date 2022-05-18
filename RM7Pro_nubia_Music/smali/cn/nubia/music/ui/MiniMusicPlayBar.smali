.class public Lcn/nubia/music/ui/MiniMusicPlayBar;
.super Landroid/widget/RelativeLayout;
.source "MiniMusicPlayBar.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/ui/MiniMusicPlayBar$a;
    }
.end annotation


# static fields
.field private static final DATA_LOADING_TIMEOUT:I = 0x1f40

.field private static final PLAYER_STATE_PREPRARING:I = 0x1

.field private static final TIMEOUT_TOAST:I = 0x1


# instance fields
.field private activityActive:Z

.field private mAlbumView:Lcn/nubia/music/ui/MiniPlayAlbumView;

.field private mArtistView:Landroid/widget/TextView;

.field private mBtnUnion:Landroid/widget/RelativeLayout;

.field private mContentLayout:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mCurrentPos:J

.field private mDuration:J

.field private mGetData:Z

.field private mHandler:Landroid/os/Handler;

.field private mLabelView:Landroid/widget/TextView;

.field private mLoadTimer:Ljava/util/Timer;

.field private mNextButton:Landroid/widget/ImageView;

.field private mPlayButton:Landroid/widget/ImageView;

.field private mPlaybackStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mProgress:Landroid/widget/ProgressBar;

.field private final mRefreshPos:Ljava/lang/Runnable;

.field private mRegReceiver:Z

.field private mServiceToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

.field private mUpdataUIHandler:Landroid/os/Handler;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-wide v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPos:J

    .line 45
    iput-wide v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mDuration:J

    .line 47
    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLoadTimer:Ljava/util/Timer;

    .line 51
    iput-boolean v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mGetData:Z

    .line 54
    iput-boolean v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->activityActive:Z

    .line 115
    new-instance v0, Lcn/nubia/music/ui/MiniMusicPlayBar$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$1;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRefreshPos:Ljava/lang/Runnable;

    .line 441
    iput-boolean v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRegReceiver:Z

    .line 475
    new-instance v0, Lcn/nubia/music/ui/MiniMusicPlayBar$12;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$12;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->serviceConnection:Landroid/content/ServiceConnection;

    .line 490
    new-instance v0, Lcn/nubia/music/ui/MiniMusicPlayBar$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$2;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlaybackStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 653
    new-instance v0, Lcn/nubia/music/ui/MiniMusicPlayBar$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$4;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mUpdataUIHandler:Landroid/os/Handler;

    .line 67
    const-string v0, "layout_inflater"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 69
    const v1, 0x7f030039

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-object v0, p1

    .line 70
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 71
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mHandler:Landroid/os/Handler;

    .line 73
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->initView()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/ui/MiniMusicPlayBar;)J
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->startUpdateProgress()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/music/ui/MiniMusicPlayBar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setArtistName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcn/nubia/music/ui/MiniMusicPlayBar;Landroid/content/Intent;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcn/nubia/music/ui/MiniMusicPlayBar;->refreshView(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcn/nubia/music/ui/MiniMusicPlayBar;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mGetData:Z

    return v0
.end method

.method static synthetic access$1600(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mUpdataUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcn/nubia/music/ui/MiniMusicPlayBar;)Ljava/util/Timer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLoadTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/music/ui/MiniMusicPlayBar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/music/ui/MiniMusicPlayBar;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/music/ui/MiniMusicPlayBar;)Lcn/nubia/music/ui/MiniPlayAlbumView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mAlbumView:Lcn/nubia/music/ui/MiniPlayAlbumView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->refreshView()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/music/ui/MiniMusicPlayBar;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->isEmptyOfPlaybackService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setPlayView()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->stopUpdateProgress()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 729
    sget-boolean v0, Lcn/nubia/music/third/StatisticsEvent;->UMENG_OPEN:Z

    if-eqz v0, :cond_0

    .line 730
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 731
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcn/nubia/music/third/StatisticsEvent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 734
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 195
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    .line 197
    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContentLayout:Landroid/widget/RelativeLayout;

    .line 198
    const v0, 0x7f1000cb

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/MiniPlayAlbumView;

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mAlbumView:Lcn/nubia/music/ui/MiniPlayAlbumView;

    .line 200
    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLabelView:Landroid/widget/TextView;

    .line 201
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f100053

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mNextButton:Landroid/widget/ImageView;

    .line 204
    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    .line 205
    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mBtnUnion:Landroid/widget/RelativeLayout;

    .line 207
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setPlayView()V

    .line 208
    return-void
.end method

.method private isEmptyOfPlaybackService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 77
    sget-boolean v1, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getQueue()[J

    move-result-object v2

    .line 83
    invoke-static {v1}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameArtistName(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    .line 578
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    const/4 v0, 0x1

    .line 581
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshNow()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 87
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    if-nez v0, :cond_2

    .line 88
    :cond_0
    const-wide/16 v0, -0x1

    .line 112
    :cond_1
    :goto_0
    return-wide v0

    .line 91
    :cond_2
    :try_start_0
    iget-wide v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPos:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_3

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->position()J

    move-result-wide v0

    move-wide v2, v0

    .line 92
    :goto_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->duration()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mDuration:J

    .line 94
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getBufferingPrecent()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 96
    const-wide/16 v0, 0x3e8

    rem-long v0, v2, v0

    sub-long v0, v8, v0

    .line 97
    cmp-long v4, v2, v6

    if-ltz v4, :cond_4

    iget-wide v4, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mDuration:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 99
    iget-object v4, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    mul-long/2addr v2, v8

    iget-wide v6, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mDuration:J

    div-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 103
    :goto_2
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 104
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The IllegalStateException message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 112
    :goto_3
    const-wide/16 v0, 0x1f4

    goto :goto_0

    .line 91
    :cond_3
    :try_start_1
    iget-wide v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPos:J

    move-wide v2, v0

    goto :goto_1

    .line 101
    :cond_4
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 109
    :catch_1
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Exception message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private refreshView()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 392
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setPlayView()V

    .line 393
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_0

    .line 394
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 395
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getInnerPlayerState()I

    move-result v0

    .line 397
    if-ne v0, v6, :cond_1

    .line 398
    iget-object v3, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    const v4, 0x7f0b0023

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 402
    :goto_0
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v0, v6, :cond_2

    .line 403
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->startUpdateProgress()V

    .line 407
    :goto_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020123

    .line 409
    :goto_2
    iget-object v3, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 413
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mAlbumView:Lcn/nubia/music/ui/MiniPlayAlbumView;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MiniPlayAlbumView;->setImageResource(I)V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    .line 439
    :cond_0
    :goto_3
    return-void

    .line 400
    :cond_1
    invoke-direct {p0, v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setArtistName(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->stopUpdateProgress()V

    goto :goto_1

    .line 407
    :cond_3
    const v0, 0x7f020124

    goto :goto_2

    .line 417
    :cond_4
    iget-object v3, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    :cond_5
    new-instance v3, Lcn/nubia/music/ui/MiniMusicPlayBar$11;

    invoke-direct {v3, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$11;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v6

    .line 435
    invoke-virtual {v3, v4}, Lcn/nubia/music/ui/MiniMusicPlayBar$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 436
    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    goto :goto_3
.end method

.method private refreshView(Landroid/content/Intent;Z)V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEmpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setPlayView()V

    .line 325
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 330
    iget-wide v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPos:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_1

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->position()J

    move-result-wide v0

    .line 331
    :goto_0
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->duration()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mDuration:J

    .line 332
    iget-object v4, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getBufferingPrecent()I

    move-result v5

    mul-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 334
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mDuration:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 336
    iget-object v4, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    iget-wide v6, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mDuration:J

    div-long/2addr v0, v6

    long-to-int v0, v0

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 341
    :goto_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getInnerPlayerState()I

    move-result v0

    .line 342
    if-ne v0, v8, :cond_3

    .line 343
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    const v4, 0x7f0b0023

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 348
    :goto_2
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eq v0, v8, :cond_4

    .line 349
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->startUpdateProgress()V

    .line 353
    :goto_3
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 356
    if-nez v0, :cond_5

    .line 357
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mAlbumView:Lcn/nubia/music/ui/MiniPlayAlbumView;

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/MiniPlayAlbumView;->setImageResource(I)V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    .line 389
    :cond_0
    :goto_4
    return-void

    .line 330
    :cond_1
    iget-wide v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPos:J

    goto :goto_0

    .line 338
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_4

    .line 345
    :cond_3
    :try_start_1
    invoke-direct {p0, v2}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setArtistName(Ljava/lang/String;)V

    goto :goto_2

    .line 351
    :cond_4
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->stopUpdateProgress()V

    goto :goto_3

    .line 362
    :cond_5
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    :cond_6
    new-instance v1, Lcn/nubia/music/ui/MiniMusicPlayBar$10;

    invoke-direct {v1, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$10;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    .line 380
    invoke-virtual {v1, v4}, Lcn/nubia/music/ui/MiniMusicPlayBar$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 382
    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private registerTrackReceiverSafe()V
    .locals 4

    .prologue
    .line 444
    iget-boolean v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRegReceiver:Z

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 446
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v1, "com.bean.music.preset.CurrentAlbumChange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "cn.nubia.music.preset.seekchanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlaybackStateChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRegReceiver:Z

    .line 456
    :cond_0
    return-void
.end method

.method private setArtistName(Ljava/lang/String;)V
    .locals 3

    .prologue
    const v2, 0x7f0b0134

    const/4 v1, 0x0

    .line 586
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->isSameArtistName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    const-string v0, "<unknown>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 596
    invoke-static {v2}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->isSameArtistName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 603
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPlayView()V
    .locals 5

    .prologue
    const v1, 0x7f020124

    const v0, 0x7f020123

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 212
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->isEmptyOfPlaybackService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    const-string v2, "set play view mini x"

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    :goto_0
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/music/ui/MiniMusicPlayBar$5;

    invoke-direct {v1, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$5;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContentLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/nubia/music/ui/MiniMusicPlayBar$6;

    invoke-direct {v1, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$6;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mAlbumView:Lcn/nubia/music/ui/MiniPlayAlbumView;

    invoke-virtual {v0, v4}, Lcn/nubia/music/ui/MiniPlayAlbumView;->setVisibility(I)V

    .line 255
    const v0, 0x7f0b0089

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setSongName(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 215
    goto :goto_0

    .line 259
    :cond_1
    const-string v2, "set play view mini  xxx"

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mAlbumView:Lcn/nubia/music/ui/MiniPlayAlbumView;

    invoke-virtual {v2}, Lcn/nubia/music/ui/MiniPlayAlbumView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mAlbumView:Lcn/nubia/music/ui/MiniPlayAlbumView;

    invoke-virtual {v2, v3}, Lcn/nubia/music/ui/MiniPlayAlbumView;->setVisibility(I)V

    .line 263
    :cond_2
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 264
    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mNextButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 267
    :goto_2
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/music/ui/MiniMusicPlayBar$7;

    invoke-direct {v1, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$7;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mNextButton:Landroid/widget/ImageView;

    const v1, 0x7f020122

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mNextButton:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/music/ui/MiniMusicPlayBar$8;

    invoke-direct {v1, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$8;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContentLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Lcn/nubia/music/ui/MiniMusicPlayBar$9;

    invoke-direct {v1, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$9;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-direct {p0, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setArtistName(Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->setSongName(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 265
    goto :goto_2
.end method

.method private setSongName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set play view mini setSongName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    const-string v0, "set play view mini  4"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 619
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLabelView:Landroid/widget/TextView;

    const v1, 0x7f0b0089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private startLoadingTimer()V
    .locals 4

    .prologue
    .line 721
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLoadTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLoadTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 724
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLoadTimer:Ljava/util/Timer;

    .line 725
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mLoadTimer:Ljava/util/Timer;

    new-instance v1, Lcn/nubia/music/ui/MiniMusicPlayBar$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/ui/MiniMusicPlayBar$a;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;Lcn/nubia/music/ui/MiniMusicPlayBar$1;)V

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 726
    return-void
.end method

.method private startUpdateProgress()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRefreshPos:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRefreshPos:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    return-void
.end method

.method private stopUpdateProgress()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRefreshPos:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method private unregisterTrackReceiverSafe()V
    .locals 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRegReceiver:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlaybackStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 461
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mCurrentPath:Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mRegReceiver:Z

    .line 464
    :cond_0
    return-void
.end method

.method private updateCurrentAlbum()V
    .locals 5

    .prologue
    .line 625
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 630
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    new-instance v2, Lcn/nubia/music/ui/MiniMusicPlayBar$3;

    invoke-direct {v2, p0}, Lcn/nubia/music/ui/MiniMusicPlayBar$3;-><init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    .line 648
    invoke-virtual {v2, v3}, Lcn/nubia/music/ui/MiniMusicPlayBar$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public bindServiceAndRegisteReceiver()V
    .locals 2

    .prologue
    .line 467
    invoke-virtual {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lcn/nubia/music/app/MusicPlayer;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mServiceToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    .line 469
    return-void
.end method

.method public forceGone()V
    .locals 1

    .prologue
    .line 144
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public forceVisibility()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContext:Landroid/content/Context;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->activityActive:Z

    .line 687
    return-void

    .line 686
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContext:Landroid/content/Context;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->activityActive:Z

    .line 682
    return-void

    .line 681
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 697
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 692
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "onAttachedToWindow"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->bindServiceAndRegisteReceiver()V

    .line 139
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->registerTrackReceiverSafe()V

    .line 140
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 141
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 553
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 556
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 557
    const v0, 0x7f0d0090

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelOffset(I)I

    move-result v1

    .line 558
    const v0, 0x7f0d0092

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelOffset(I)I

    move-result v0

    move v3, v1

    move v1, v0

    .line 565
    :goto_0
    if-eq v3, v2, :cond_0

    if-eq v1, v2, :cond_0

    .line 566
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mPlayButton:Landroid/widget/ImageView;

    .line 567
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 568
    invoke-virtual {v0, v4, v4, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 570
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mBtnUnion:Landroid/widget/RelativeLayout;

    .line 571
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 572
    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 574
    :cond_0
    return-void

    .line 560
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 561
    const v0, 0x7f0d008f

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelOffset(I)I

    move-result v1

    .line 562
    const v0, 0x7f0d0091

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getDimensionPixelOffset(I)I

    move-result v0

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v2

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "onDetachedFromWindow"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 156
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->stopUpdateProgress()V

    .line 163
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->unregisterTrackReceiverSafe()V

    .line 164
    invoke-virtual {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->unbindServiceAndUnRegisteReceiver()V

    .line 165
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 166
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 171
    if-nez p1, :cond_3

    .line 174
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_2

    .line 175
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->refreshNow()J

    .line 176
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getInnerPlayerState()I

    move-result v0

    .line 177
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 179
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->startUpdateProgress()V

    .line 190
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 191
    return-void

    .line 181
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->stopUpdateProgress()V

    goto :goto_0

    .line 185
    :cond_2
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->stopUpdateProgress()V

    goto :goto_0

    .line 187
    :cond_3
    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 188
    :cond_4
    invoke-direct {p0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->stopUpdateProgress()V

    goto :goto_0
.end method

.method public unbindServiceAndUnRegisteReceiver()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar;->mServiceToken:Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    invoke-static {v0}, Lcn/nubia/music/app/MusicPlayer;->unbindFromService(Lcn/nubia/music/app/MusicPlayer$ServiceToken;)V

    .line 473
    return-void
.end method
