.class public Lcn/nubia/notepad/view/NotePadPlayerViewLayout;
.super Landroid/widget/LinearLayout;
.source "NotePadPlayerViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private final MILLISECOND:I

.field private lockObj:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mIsInPreviewMode:Z

.field private mListener:Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNowPlayTime:Landroid/widget/TextView;

.field private mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

.field mPlayerHandler:Landroid/os/Handler;

.field private mPlayerLefeButton:Landroid/widget/ImageView;

.field private mPlayerResourceFile:Ljava/io/File;

.field private mPlayerRightButton:Landroid/widget/ImageView;

.field private mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

.field private mRecoedFileTotalTime:Ljava/lang/String;

.field mRunnable:Ljava/lang/Runnable;

.field private mSBarPlayer:Landroid/widget/SeekBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTotalPlayerTime:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/16 v0, 0x3e8

    iput v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->MILLISECOND:I

    .line 44
    sget-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRecoedFileTotalTime:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mIsInPreviewMode:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->lockObj:Ljava/lang/Object;

    .line 293
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerHandler:Landroid/os/Handler;

    .line 299
    new-instance v0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;

    invoke-direct {v0, p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout$1;-><init>(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)V

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRunnable:Ljava/lang/Runnable;

    .line 56
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mNowPlayTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/notepad/view/NotePadPlayerViewLayout;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/notepad/view/NotePadPlayerViewLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mSBarPlayer:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private initTotalPlayerTime()V
    .locals 4

    .prologue
    .line 167
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 168
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 169
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerResourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 171
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRecoedFileTotalTime:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTotalPlayerTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRecoedFileTotalTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 174
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyPlayerStateChanged(Lcn/nubia/notepad/enums/MediaPlayerState;)V
    .locals 2
    .param p1, "stateCode"    # Lcn/nubia/notepad/enums/MediaPlayerState;

    .prologue
    .line 338
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->lockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    invoke-static {}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->getInstance()Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/notepad/observer/NotePadRecordPlayObsever;->notifyObservers(Ljava/lang/Object;)V

    .line 340
    monitor-exit v1

    .line 341
    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private pausePlaying()V
    .locals 3

    .prologue
    .line 313
    sget-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 314
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerLefeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 318
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    :cond_0
    sget-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

    invoke-direct {p0, v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->notifyPlayerStateChanged(Lcn/nubia/notepad/enums/MediaPlayerState;)V

    .line 321
    return-void
.end method

.method private updatePlayerTime()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 62
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mSBarPlayer:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 63
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public initView(Ljava/io/File;Z)Landroid/view/View;
    .locals 4
    .param p1, "playerResourceFile"    # Ljava/io/File;
    .param p2, "isInPreviewMode"    # Z

    .prologue
    .line 67
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f030020

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0f0085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mNowPlayTime:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0f0086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTotalPlayerTime:Landroid/widget/TextView;

    .line 71
    const v1, 0x7f0f0084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mSBarPlayer:Landroid/widget/SeekBar;

    .line 72
    const v1, 0x7f0f0087

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerLefeButton:Landroid/widget/ImageView;

    .line 74
    const v1, 0x7f0f0088

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerRightButton:Landroid/widget/ImageView;

    .line 76
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerLefeButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerRightButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerRightButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mSBarPlayer:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 81
    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mView:Landroid/view/View;

    .line 82
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerResourceFile:Ljava/io/File;

    .line 83
    iput-boolean p2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mIsInPreviewMode:Z

    .line 85
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 87
    new-instance v1, Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    invoke-direct {v1, p0}, Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;-><init>(Lcn/nubia/notepad/engine/phonestatelistener/IPhoneStateListener;)V

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    .line 88
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 90
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->initTotalPlayerTime()V

    .line 91
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_2

    .line 110
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->startPlaying(I)V

    goto :goto_0

    .line 111
    :cond_2
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_0

    .line 112
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->pausePlaying()V

    goto :goto_0

    .line 116
    :pswitch_1
    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->stopPlayinging()V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0087
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v3, 0x0

    .line 125
    sget-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 126
    sget-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    invoke-direct {p0, v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->notifyPlayerStateChanged(Lcn/nubia/notepad/enums/MediaPlayerState;)V

    .line 127
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 128
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 130
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 132
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mIsInPreviewMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;->removePlayerView(Landroid/view/View;)V

    .line 142
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerLefeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mNowPlayTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mSBarPlayer:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 146
    mul-int/lit16 p2, p2, 0x3e8

    .line 147
    if-eqz p3, :cond_0

    .line 148
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 150
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mNowPlayTime:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p0, p2}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->startPlaying(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 159
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 163
    return-void
.end method

.method public pausePlayingOrRecording()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->pausePlaying()V

    .line 98
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a007e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    :cond_0
    return-void
.end method

.method public showTime(I)Ljava/lang/String;
    .locals 7
    .param p1, "time"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-le p1, v3, :cond_0

    .line 184
    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    .line 186
    :cond_0
    div-int/lit16 p1, p1, 0x3e8

    .line 187
    div-int/lit8 v1, p1, 0x3c

    .line 188
    .local v1, "minute":I
    div-int/lit8 v0, v1, 0x3c

    .line 189
    .local v0, "hour":I
    rem-int/lit8 v2, p1, 0x3c

    .line 190
    .local v2, "second":I
    rem-int/lit8 v1, v1, 0x3c

    .line 191
    if-nez v0, :cond_1

    .line 192
    const-string v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 194
    :goto_0
    return-object v3

    :cond_1
    const-string v3, "59:59"

    goto :goto_0
.end method

.method public startPlaying(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 199
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerLefeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v2, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v1, v2, :cond_0

    .line 203
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 204
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 205
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 206
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerResourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 208
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 209
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTotalPlayerTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 210
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mNowPlayTime:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 217
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 218
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->updatePlayerTime()V

    .line 220
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    invoke-direct {p0, v1}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->notifyPlayerStateChanged(Lcn/nubia/notepad/enums/MediaPlayerState;)V

    .line 222
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startPlaying(Ljava/io/File;)V
    .locals 5
    .param p1, "playerResourceFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 225
    iput-object p1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerResourceFile:Ljava/io/File;

    .line 226
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerLefeButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v2, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v1, v2, :cond_1

    .line 229
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 230
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 232
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerResourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 234
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 244
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTotalPlayerTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 246
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 247
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->updatePlayerTime()V

    .line 289
    :cond_0
    :goto_1
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    invoke-direct {p0, v1}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->notifyPlayerStateChanged(Lcn/nubia/notepad/enums/MediaPlayerState;)V

    .line 291
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 239
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v2, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v1, v2, :cond_2

    .line 249
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 250
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mNowPlayTime:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 253
    :try_start_1
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerResourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 264
    :goto_2
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTotalPlayerTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 266
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->updatePlayerTime()V

    goto :goto_1

    .line 255
    :catch_4
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 257
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_2

    .line 259
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_6
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    .line 261
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v0

    .line 262
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 267
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    sget-object v2, Lcn/nubia/notepad/enums/MediaPlayerState;->PAUSED:Lcn/nubia/notepad/enums/MediaPlayerState;

    if-ne v1, v2, :cond_0

    .line 268
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 269
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mNowPlayTime:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 272
    :try_start_2
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerResourceFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 283
    :goto_3
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTotalPlayerTime:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    invoke-virtual {p0, v3}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->showTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 285
    sget-object v1, Lcn/nubia/notepad/enums/MediaPlayerState;->PLAYING:Lcn/nubia/notepad/enums/MediaPlayerState;

    iput-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerState:Lcn/nubia/notepad/enums/MediaPlayerState;

    .line 286
    invoke-direct {p0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->updatePlayerTime()V

    goto/16 :goto_1

    .line 274
    :catch_8
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 276
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_9
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    .line 278
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_a
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_3

    .line 280
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_b
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public stopPlayinging()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 326
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 328
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPlayerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    :cond_0
    sget-object v0, Lcn/nubia/notepad/enums/MediaPlayerState;->STOPPED:Lcn/nubia/notepad/enums/MediaPlayerState;

    invoke-direct {p0, v0}, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->notifyPlayerStateChanged(Lcn/nubia/notepad/enums/MediaPlayerState;)V

    .line 331
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mPhoneStateListener:Lcn/nubia/notepad/engine/phonestatelistener/NotePadPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 332
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mListener:Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;

    iget-object v1, p0, Lcn/nubia/notepad/view/NotePadPlayerViewLayout;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcn/nubia/notepad/engine/interf/INotePadPlayerViewListener;->removePlayerView(Landroid/view/View;)V

    .line 335
    :cond_1
    return-void
.end method
