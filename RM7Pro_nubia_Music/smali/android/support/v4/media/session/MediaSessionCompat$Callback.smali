.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;
    }
.end annotation


# instance fields
.field private mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

.field final mCallbackObj:Ljava/lang/Object;

.field private mMediaPlayPauseKeyHandled:Z

.field private mSessionImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    .line 873
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 874
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    .line 882
    :goto_0
    return-void

    .line 875
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 876
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi23;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0

    .line 877
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 878
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0

    .line 880
    :cond_2
    iput-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->handleMediaPlayPauseKeySingleTapIfUnhandled()V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->setSessionImpl(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V

    return-void
.end method

.method private handleMediaPlayPauseKeySingleTapIfUnhandled()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 955
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPauseKeyHandled:Z

    if-eqz v0, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 958
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    .line 959
    if-eqz v0, :cond_0

    .line 962
    iput-boolean v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPauseKeyHandled:Z

    .line 963
    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 964
    if-nez v0, :cond_2

    move-wide v6, v8

    .line 965
    :goto_1
    if-eqz v0, :cond_3

    .line 966
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    move v4, v1

    .line 967
    :goto_2
    const-wide/16 v10, 0x204

    and-long/2addr v10, v6

    cmp-long v0, v10, v8

    if-eqz v0, :cond_4

    move v3, v1

    .line 969
    :goto_3
    const-wide/16 v10, 0x202

    and-long/2addr v6, v10

    cmp-long v0, v6, v8

    if-eqz v0, :cond_5

    move v0, v1

    .line 971
    :goto_4
    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    .line 972
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_0

    .line 964
    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_1

    :cond_3
    move v4, v2

    .line 966
    goto :goto_2

    :cond_4
    move v3, v2

    .line 967
    goto :goto_3

    :cond_5
    move v0, v2

    .line 969
    goto :goto_4

    .line 973
    :cond_6
    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    .line 974
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_0
.end method

.method private setSessionImpl(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 885
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    .line 886
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 889
    :cond_0
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    .line 890
    return-void
.end method


# virtual methods
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    .prologue
    .line 1187
    return-void
.end method

.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 0

    .prologue
    .line 1199
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0

    .prologue
    .line 902
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1177
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .prologue
    .line 1080
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 914
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    .line 915
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    if-nez v1, :cond_1

    :cond_0
    move v0, v3

    .line 951
    :goto_0
    return v0

    .line 918
    :cond_1
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 919
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v0, v3

    .line 920
    goto :goto_0

    .line 922
    :cond_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    .line 923
    sparse-switch v6, :sswitch_data_0

    move v0, v3

    .line 951
    goto :goto_0

    .line 926
    :sswitch_0
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 927
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->removeMessages(I)V

    .line 929
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 930
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->handleMediaPlayPauseKeySingleTapIfUnhandled()V

    :cond_4
    :goto_1
    move v0, v2

    .line 949
    goto :goto_0

    .line 932
    :cond_5
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 934
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->removeMessages(I)V

    .line 936
    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    .line 937
    if-nez v0, :cond_7

    move-wide v0, v4

    .line 939
    :goto_2
    const-wide/16 v6, 0x20

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_6

    .line 940
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 942
    :cond_6
    iput-boolean v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPauseKeyHandled:Z

    goto :goto_1

    .line 937
    :cond_7
    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    goto :goto_2

    .line 944
    :cond_8
    iput-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mMediaPlayPauseKeyHandled:Z

    .line 945
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackHandler:Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;

    .line 947
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v4, v1

    .line 945
    invoke-virtual {v0, v2, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$CallbackHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 923
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1062
    return-void
.end method

.method public onPlay()V
    .locals 0

    .prologue
    .line 1027
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1034
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1043
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1049
    return-void
.end method

.method public onPrepare()V
    .locals 0

    .prologue
    .line 985
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 996
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1010
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method

.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .locals 0

    .prologue
    .line 1210
    return-void
.end method

.method public onRemoveQueueItemAt(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1221
    return-void
.end method

.method public onRewind()V
    .locals 0

    .prologue
    .line 1086
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0

    .prologue
    .line 1100
    return-void
.end method

.method public onSetCaptioningEnabled(Z)V
    .locals 0

    .prologue
    .line 1116
    return-void
.end method

.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 0

    .prologue
    .line 1108
    return-void
.end method

.method public onSetRepeatMode(I)V
    .locals 0

    .prologue
    .line 1132
    return-void
.end method

.method public onSetShuffleMode(I)V
    .locals 0

    .prologue
    .line 1161
    return-void
.end method

.method public onSetShuffleModeEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1146
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .prologue
    .line 1068
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .prologue
    .line 1074
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0

    .prologue
    .line 1056
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 1092
    return-void
.end method
