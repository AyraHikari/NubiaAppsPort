.class public Lcn/nubia/music/activity/AudioPreviewActivity;
.super Lcn/nubia/commonui/app/AlertActivity;
.source "AudioPreviewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/AudioPreviewActivity$a;,
        Lcn/nubia/music/activity/AudioPreviewActivity$b;
    }
.end annotation


# instance fields
.field private mArtistName:Lcn/nubia/music/ui/ScrollForeverTextView;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCloseHandler:Landroid/os/Handler;

.field private mCtsManager:Lcn/nubia/music/utils/CtsManager;

.field private mDuration:I

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field private mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mIsOnPause:Z

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mLoadingText:Landroid/widget/TextView;

.field private mPausedByTransientLossOfFocus:Z

.field private mPlayAndPause:Landroid/widget/ImageView;

.field private mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

.field private mPosition:I

.field private mProgressRefresher:Landroid/os/Handler;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeeking:Z

.field private mSongName:Lcn/nubia/music/ui/ScrollForeverTextView;

.field private mUri:Landroid/net/Uri;

.field private mWait:Z

.field private onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lcn/nubia/commonui/app/AlertActivity;-><init>()V

    .line 67
    iput-boolean v2, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSeeking:Z

    .line 74
    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mCloseHandler:Landroid/os/Handler;

    .line 84
    iput-boolean v2, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mIsOnPause:Z

    .line 88
    iput-boolean v2, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mWait:Z

    .line 92
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$1;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    .line 449
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$7;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$7;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 603
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$9;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$9;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/utils/CtsManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->initContent()V

    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/music/activity/AudioPreviewActivity;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mDuration:I

    return v0
.end method

.method static synthetic access$1002(Lcn/nubia/music/activity/AudioPreviewActivity;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mDuration:I

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mProgressRefresher:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcn/nubia/music/activity/AudioPreviewActivity;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mWait:Z

    return v0
.end method

.method static synthetic access$1602(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mWait:Z

    return p1
.end method

.method static synthetic access$1700(Lcn/nubia/music/activity/AudioPreviewActivity;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPausedByTransientLossOfFocus:Z

    return v0
.end method

.method static synthetic access$1702(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic access$1800(Lcn/nubia/music/activity/AudioPreviewActivity;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mIsOnPause:Z

    return v0
.end method

.method static synthetic access$1900(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->waitToPlaying()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->start()V

    return-void
.end method

.method static synthetic access$2100(Lcn/nubia/music/activity/AudioPreviewActivity;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSeeking:Z

    return v0
.end method

.method static synthetic access$2102(Lcn/nubia/music/activity/AudioPreviewActivity;Z)Z
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSeeking:Z

    return p1
.end method

.method static synthetic access$2200(Lcn/nubia/music/activity/AudioPreviewActivity;)I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$2202(Lcn/nubia/music/activity/AudioPreviewActivity;I)I
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPosition:I

    return p1
.end method

.method static synthetic access$300(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->updatePlayPause()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->stopPlayback()V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/ui/ScrollForeverTextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSongName:Lcn/nubia/music/ui/ScrollForeverTextView;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/ui/ScrollForeverTextView;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mArtistName:Lcn/nubia/music/ui/ScrollForeverTextView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method private checkPermission()V
    .locals 2

    .prologue
    .line 211
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcn/nubia/music/utils/CTA;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$4;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    invoke-static {p0, v0}, Lcn/nubia/music/utils/CTA;->showCTADialog(Landroid/content/Context;Lcn/nubia/music/utils/CTA$OnBtnClickListener;)V

    .line 230
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->initContent()V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->onWranPermissionDialogListener:Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;

    invoke-virtual {v0, v1}, Lcn/nubia/music/utils/CtsManager;->requestCtsPermissions(Lcn/nubia/music/utils/CtsManager$OnWranDialogCancleListener;)V

    goto :goto_0
.end method

.method private initContent()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 257
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mProgressRefresher:Landroid/os/Handler;

    .line 259
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 261
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/AudioPreviewActivity$a;

    .line 262
    if-nez v0, :cond_2

    .line 263
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-direct {v0, v2}, Lcn/nubia/music/activity/AudioPreviewActivity$a;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity$1;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    .line 264
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0, v8}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->setAudioStreamType(I)V

    .line 265
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 268
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    iget-object v3, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$5;

    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcn/nubia/music/activity/AudioPreviewActivity$5;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;Landroid/content/ContentResolver;)V

    .line 328
    iget-object v3, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 331
    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 332
    iget-object v3, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "media"

    if-ne v3, v4, :cond_3

    .line 334
    iget-object v3, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "title"

    aput-object v5, v4, v1

    const-string v5, "artist"

    aput-object v5, v4, v6

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_1
    :goto_1
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 276
    const v0, 0x7f0b00ca

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 277
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    goto :goto_1

    .line 281
    :cond_2
    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    .line 282
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    .line 283
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0, v8}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->setAudioStreamType(I)V

    .line 284
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 285
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->showPostPrepareUI()V

    goto/16 :goto_0

    .line 341
    :cond_3
    iget-object v3, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 343
    :cond_4
    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 346
    iget-object v3, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 347
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v1

    const-string v5, "title"

    aput-object v5, v4, v6

    const-string v5, "artist"

    aput-object v5, v4, v9

    const-string v5, "_data=?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v7, v6, v1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 357
    :cond_5
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->setNames()V

    goto/16 :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 233
    const-string v0, ""

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, -0xa0a0b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 235
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 237
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->setVolumeControlStream(I)V

    .line 238
    invoke-virtual {p0, v2}, Lcn/nubia/music/activity/AudioPreviewActivity;->requestWindowFeature(I)Z

    .line 239
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->setContentView(I)V

    .line 241
    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/ScrollForeverTextView;

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSongName:Lcn/nubia/music/ui/ScrollForeverTextView;

    .line 242
    const v0, 0x7f100065

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/ui/ScrollForeverTextView;

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mArtistName:Lcn/nubia/music/ui/ScrollForeverTextView;

    .line 243
    const v0, 0x7f100060

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 245
    const v0, 0x7f100062

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mLoadingText:Landroid/widget/TextView;

    .line 246
    const-string v0, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const v0, 0x7f0b012e

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :goto_0
    const v0, 0x7f100063

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSeekBar:Landroid/widget/SeekBar;

    .line 253
    const v0, 0x7f100064

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayAndPause:Landroid/widget/ImageView;

    .line 254
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mLoadingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private registerEventReceiver()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$3;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 176
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    return-void
.end method

.method private registerHeadsetReceiver()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$2;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$2;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method private showPostPrepareUI()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 401
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    :cond_0
    new-instance v0, Lcn/nubia/music/activity/AudioPreviewActivity$6;

    invoke-direct {v0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$6;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 446
    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 447
    return-void
.end method

.method private start()V
    .locals 4

    .prologue
    .line 547
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 549
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->start()V

    .line 550
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mProgressRefresher:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/activity/AudioPreviewActivity$b;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$b;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    return-void
.end method

.method private stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mProgressRefresher:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mProgressRefresher:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->release()V

    .line 376
    iput-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    .line 377
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 379
    :cond_1
    return-void
.end method

.method private unRegisterHeadsetReceiver()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    :cond_0
    return-void
.end method

.method private unregisterEventReceiver()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mEventReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    :cond_0
    return-void
.end method

.method private updatePlayPause()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    if-eqz v0, :cond_0

    .line 590
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayAndPause:Landroid/widget/ImageView;

    const v1, 0x7f020123

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayAndPause:Landroid/widget/ImageView;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 594
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mProgressRefresher:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private waitToPlaying()V
    .locals 4

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mWait:Z

    .line 497
    const-string v0, "got focus,  but onPause, wait onResume 1000ms"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mCloseHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/music/activity/AudioPreviewActivity$8;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$8;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 509
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 734
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertActivity;->finish()V

    .line 735
    const/4 v0, 0x0

    const v1, 0x7f040013

    invoke-virtual {p0, v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->overridePendingTransition(II)V

    .line 736
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer percent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mDuration:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 638
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->updatePlayPause()V

    .line 639
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 192
    const-string v0, "onCreate"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 194
    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    .line 208
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    .line 199
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->initView()V

    .line 204
    new-instance v0, Lcn/nubia/music/utils/CtsManager;

    invoke-direct {v0, p0}, Lcn/nubia/music/utils/CtsManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    .line 205
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->checkPermission()V

    .line 206
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->registerHeadsetReceiver()V

    .line 207
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->registerEventReceiver()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 513
    const-string v0, "onDestroy"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 514
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->stopPlayback()V

    .line 515
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertActivity;->onDestroy()V

    .line 516
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->unRegisterHeadsetReceiver()V

    .line 517
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->unregisterEventReceiver()V

    .line 518
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 629
    const-string v0, "onError"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 630
    const v0, 0x7f0b00ca

    invoke-static {p0, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 631
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    .line 632
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 654
    sparse-switch p1, :sswitch_data_0

    .line 688
    invoke-super {p0, p1, p2}, Lcn/nubia/commonui/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 657
    :sswitch_1
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v1}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 658
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v1}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->pause()V

    .line 662
    :goto_1
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->updatePlayPause()V

    goto :goto_0

    .line 660
    :cond_0
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->start()V

    goto :goto_1

    .line 665
    :sswitch_2
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->start()V

    .line 666
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->updatePlayPause()V

    goto :goto_0

    .line 669
    :sswitch_3
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v1}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 670
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v1}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->pause()V

    .line 672
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->updatePlayPause()V

    goto :goto_0

    .line 684
    :sswitch_4
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->stopPlayback()V

    .line 685
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    goto :goto_0

    .line 654
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_4
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x7e -> :sswitch_2
        0x7f -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 541
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertActivity;->onPause()V

    .line 542
    const-string v0, "onPause"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 543
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mIsOnPause:Z

    .line 544
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 391
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    check-cast p1, Lcn/nubia/music/activity/AudioPreviewActivity$a;

    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    .line 395
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->setNames()V

    .line 396
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->start()V

    .line 397
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->showPostPrepareUI()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 741
    const-string v1, ""

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 742
    const/16 v1, 0x14

    if-ne p1, v1, :cond_2

    .line 743
    const/4 v1, 0x1

    .line 744
    array-length v3, p3

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_4

    aget v4, p3, v2

    .line 745
    if-eqz v4, :cond_0

    .line 750
    :goto_1
    if-eqz v0, :cond_1

    .line 751
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->initContent()V

    .line 760
    :goto_2
    return-void

    .line 744
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 753
    :cond_1
    invoke-static {p0}, Lcn/nubia/music/utils/CtsManager;->hasNecessaryPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 754
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->initContent()V

    .line 759
    :cond_2
    :goto_3
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mCtsManager:Lcn/nubia/music/utils/CtsManager;

    invoke-virtual {v0}, Lcn/nubia/music/utils/CtsManager;->markCtsPermissionIsNotFirstLaunch()V

    goto :goto_2

    .line 756
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 522
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertActivity;->onResume()V

    .line 523
    const-string v0, "onResume"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 524
    iput-boolean v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mIsOnPause:Z

    .line 525
    iget-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mWait:Z

    if-eqz v0, :cond_0

    .line 526
    iput-boolean v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mWait:Z

    .line 527
    iget-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPausedByTransientLossOfFocus:Z

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "onResume,  and wait, go on play"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 529
    iput-boolean v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPausedByTransientLossOfFocus:Z

    .line 530
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->start()V

    .line 531
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->updatePlayPause()V

    .line 534
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    .line 366
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    .line 367
    return-object v0
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 383
    const-string v0, "onUserLeaveHint"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 384
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->stopPlayback()V

    .line 385
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->finish()V

    .line 386
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertActivity;->onUserLeaveHint()V

    .line 387
    return-void
.end method

.method public playPauseClicked(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mPlayer:Lcn/nubia/music/activity/AudioPreviewActivity$a;

    invoke-virtual {v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->pause()V

    .line 648
    :goto_0
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->updatePlayPause()V

    .line 650
    :cond_0
    return-void

    .line 646
    :cond_1
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->start()V

    goto :goto_0
.end method

.method public setNames()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSongName:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 557
    const-string v1, "mms"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.email.provider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 558
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "display_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    if-eqz v0, :cond_2

    .line 560
    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSongName:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v1, v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mArtistName:Lcn/nubia/music/ui/ScrollForeverTextView;

    invoke-virtual {v0}, Lcn/nubia/music/ui/ScrollForeverTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 570
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mArtistName:Lcn/nubia/music/ui/ScrollForeverTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setVisibility(I)V

    .line 574
    :goto_1
    return-void

    .line 562
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSongName:Lcn/nubia/music/ui/ScrollForeverTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 565
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mSongName:Lcn/nubia/music/ui/ScrollForeverTextView;

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 572
    :cond_4
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity;->mArtistName:Lcn/nubia/music/ui/ScrollForeverTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/music/ui/ScrollForeverTextView;->setVisibility(I)V

    goto :goto_1
.end method
