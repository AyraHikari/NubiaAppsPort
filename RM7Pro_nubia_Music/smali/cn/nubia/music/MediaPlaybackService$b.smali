.class Lcn/nubia/music/MediaPlaybackService$b;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MediaPlaybackService;

.field private b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Ljava/lang/Object;

.field private i:I

.field private j:J

.field private k:Ljava/lang/String;

.field private l:Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;


# direct methods
.method public constructor <init>(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3570
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3558
    new-instance v0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v0, v1}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    .line 3561
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    .line 3562
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    .line 3563
    iput v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    .line 3564
    iput-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    .line 3565
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    .line 3566
    const/16 v0, 0x64

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->i:I

    .line 3567
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    .line 3568
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->k:Ljava/lang/String;

    .line 3588
    new-instance v0, Lcn/nubia/music/MediaPlaybackService$b$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/MediaPlaybackService$b$1;-><init>(Lcn/nubia/music/MediaPlaybackService$b;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->l:Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    .line 3571
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    .line 3572
    return-void
.end method

.method static synthetic a(Lcn/nubia/music/MediaPlaybackService$b;)V
    .locals 0

    .prologue
    .line 3557
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService$b;->n()V

    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .locals 5

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3624
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    .line 3625
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    .line 3626
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0, p2}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->setMode(I)V

    .line 3627
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->reset()V

    .line 3628
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcn/nubia/music/MediaPlaybackService;->access$902(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 3629
    if-nez p2, :cond_0

    .line 3630
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->getCurrentPlayer()Ljava/lang/Object;

    move-result-object v0

    .line 3631
    instance-of v3, v0, Lcn/nubia/music/online/api/NubiaLocalPlayer;

    if-eqz v3, :cond_0

    .line 3632
    check-cast v0, Lcn/nubia/music/online/api/NubiaLocalPlayer;

    .line 3633
    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService$b;->l:Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    invoke-virtual {v0, v3}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->registerCallback(Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;)V

    .line 3634
    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcn/nubia/music/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcn/nubia/music/online/api/NubiaLocalPlayer;->setDataSource(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3635
    const/16 v3, 0x64

    iput v3, p0, Lcn/nubia/music/MediaPlaybackService$b;->i:I

    .line 3636
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    .line 3637
    const/4 v3, 0x2

    iput v3, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3638
    if-nez v0, :cond_0

    move v0, v1

    .line 3654
    :goto_0
    return v0

    .line 3645
    :catch_0
    move-exception v0

    .line 3646
    iput v4, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    move v0, v1

    .line 3647
    goto :goto_0

    .line 3650
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3651
    const-string v1, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService$b;->j()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3652
    const-string v1, "android.media.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v3}, Lcn/nubia/music/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3653
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v2

    .line 3654
    goto :goto_0
.end method

.method static synthetic b(Lcn/nubia/music/MediaPlaybackService$b;)V
    .locals 0

    .prologue
    .line 3557
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService$b;->l()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/music/MediaPlaybackService$b;)V
    .locals 0

    .prologue
    .line 3557
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService$b;->m()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/music/MediaPlaybackService$b;)V
    .locals 0

    .prologue
    .line 3557
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService$b;->k()V

    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 3734
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    .line 3735
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$800(Lcn/nubia/music/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3736
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->c:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3737
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->c:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3738
    return-void
.end method

.method private l()V
    .locals 6

    .prologue
    .line 3741
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    .line 3742
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    .line 3743
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3744
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->reset()V

    .line 3750
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->release()V

    .line 3751
    new-instance v0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v0, v2}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    .line 3752
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->c:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3753
    monitor-exit v1

    .line 3754
    return-void

    .line 3753
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 3758
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    .line 3759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    .line 3760
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3761
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->reset()V

    .line 3762
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->release()V

    .line 3763
    new-instance v0, Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v0, v2}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    .line 3764
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    const v2, 0x7f0b00cb

    invoke-static {v0, v2}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    .line 3765
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3766
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$5900(Lcn/nubia/music/MediaPlaybackService;)V

    .line 3767
    return-void

    .line 3765
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private n()V
    .locals 4

    .prologue
    .line 3771
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3772
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    if-eqz v0, :cond_0

    .line 3773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    .line 3778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared  needStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3779
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    if-eqz v0, :cond_0

    .line 3780
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->start()V

    .line 3781
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    .line 3782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    .line 3783
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$900(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3784
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/nubia/music/MediaPlaybackService;->access$902(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 3785
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->c:Landroid/os/Handler;

    const/16 v2, 0x9

    const-string v3, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3787
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3793
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3796
    invoke-direct {p0}, Lcn/nubia/music/MediaPlaybackService$b;->o()V

    .line 3798
    return-void

    .line 3793
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private o()V
    .locals 4

    .prologue
    .line 3801
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 3802
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBegin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 3803
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 3832
    :goto_0
    return-void

    .line 3807
    :cond_0
    new-instance v2, Lcn/nubia/music/MediaPlaybackService$b$2;

    invoke-direct {v2, p0, v0, v1}, Lcn/nubia/music/MediaPlaybackService$b$2;-><init>(Lcn/nubia/music/MediaPlaybackService$b;J)V

    invoke-static {v2}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(J)J
    .locals 3

    .prologue
    .line 3873
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3874
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    if-eqz v0, :cond_0

    .line 3875
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    long-to-int v2, p1

    invoke-virtual {v0, v2}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->seekTo(I)V

    .line 3876
    monitor-exit v1

    .line 3879
    :goto_0
    return-wide p1

    .line 3878
    :cond_0
    monitor-exit v1

    .line 3879
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 3878
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 3883
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0, p1, p1}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->setVolume(FF)V

    .line 3884
    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 3730
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$b;->c:Landroid/os/Handler;

    .line 3731
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3575
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3576
    :try_start_0
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$b;->k:Ljava/lang/String;

    .line 3577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSource,path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 3578
    const-string v0, "content://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    .line 3579
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3580
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/music/MediaPlaybackService$b;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    .line 3582
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3583
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    if-eqz v0, :cond_2

    .line 3584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/music/MediaPlaybackService$b;->b(Ljava/lang/String;)V

    .line 3586
    :cond_2
    return-void

    .line 3582
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 3662
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 3666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPlayer.start called mIsPrepare ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-mNeedStart ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mIsSupposedToBePlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    .line 3667
    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$900(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3666
    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 3668
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3669
    const-wide/16 v2, -0x1

    :try_start_0
    iput-wide v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    .line 3670
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    if-nez v0, :cond_1

    .line 3671
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    .line 3672
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->start()V

    .line 3673
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$900(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3674
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcn/nubia/music/MediaPlaybackService;->access$902(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 3681
    :cond_0
    :goto_0
    monitor-exit v1

    .line 3682
    return-void

    .line 3679
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    goto :goto_0

    .line 3681
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3659
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 3685
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3686
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    .line 3687
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    .line 3688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    .line 3689
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->reset()V

    .line 3690
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    .line 3691
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    .line 3692
    monitor-exit v1

    .line 3694
    return-void

    .line 3692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 3699
    iget v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 3706
    invoke-virtual {p0}, Lcn/nubia/music/MediaPlaybackService$b;->c()V

    .line 3707
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->release()V

    .line 3708
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    .line 3709
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 3712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiPlayer.pause called mIsPrepare = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 3713
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3714
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->g:Z

    .line 3715
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    if-eqz v0, :cond_0

    .line 3716
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    .line 3717
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->pause()V

    .line 3719
    :cond_0
    monitor-exit v1

    .line 3721
    return-void

    .line 3719
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 3724
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 3725
    const/4 v0, 0x5

    :try_start_0
    iput v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->f:I

    .line 3726
    monitor-exit v1

    .line 3727
    return-void

    .line 3726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v2, -0x1

    .line 3835
    .line 3836
    iget-object v4, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v4

    .line 3837
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    if-eqz v0, :cond_4

    .line 3838
    iget-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 3839
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->isStreamPlayer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3840
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    .line 3853
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    .line 3855
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3857
    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v4}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v4

    if-eqz v4, :cond_1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 3858
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v2}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v2

    invoke-direct {v2}, Lcn/nubia/music/MediaPlaybackService$b;->m()V

    .line 3860
    :cond_1
    return-wide v0

    .line 3844
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3845
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    goto :goto_0

    .line 3855
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3847
    :cond_3
    :try_start_2
    iget-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    .line 3848
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->j:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method public i()J
    .locals 3

    .prologue
    .line 3864
    iget-object v2, p0, Lcn/nubia/music/MediaPlaybackService$b;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 3865
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->e:Z

    if-eqz v0, :cond_0

    .line 3866
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->getCurrentPosition()J

    move-result-wide v0

    monitor-exit v2

    .line 3869
    :goto_0
    return-wide v0

    .line 3868
    :cond_0
    monitor-exit v2

    .line 3869
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 3868
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 3887
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b;->b:Lcn/nubia/music/app/NubiaCompatMediaPlayer;

    invoke-virtual {v0}, Lcn/nubia/music/app/NubiaCompatMediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method
