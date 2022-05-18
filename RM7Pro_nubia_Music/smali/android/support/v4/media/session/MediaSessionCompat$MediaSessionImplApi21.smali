.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
    }
.end annotation


# instance fields
.field mCaptioningEnabled:Z

.field private mDestroyed:Z

.field private final mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/support/v4/media/session/IMediaControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

.field private mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field mRatingType:I

.field mRepeatMode:I

.field private final mSessionObj:Ljava/lang/Object;

.field mShuffleMode:I

.field mShuffleModeEnabled:Z

.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3178
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z

    .line 3179
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 3192
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 3193
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;

    invoke-direct {v2, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 3195
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 3197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3178
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z

    .line 3179
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    .line 3198
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->verifySession(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 3199
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;

    invoke-direct {v2, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;Landroid/support/v4/media/session/IMediaSession;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 3201
    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Ljava/util/List;
    .locals 1

    .prologue
    .line 3174
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Z
    .locals 1

    .prologue
    .line 3174
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z

    return v0
.end method

.method static synthetic access$700(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 3174
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 3174
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    .prologue
    .line 3174
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method


# virtual methods
.method public getCallingPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3411
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 3412
    const/4 v0, 0x0

    .line 3414
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24;->getCallingPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaSession()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3401
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    .prologue
    .line 3283
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3406
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 3262
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 3235
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->isActive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 3256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z

    .line 3257
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->release(Ljava/lang/Object;)V

    .line 3258
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 3240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 3241
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3242
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3243
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3245
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3242
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3249
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3251
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3252
    return-void

    .line 3246
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setActive(Z)V
    .locals 1

    .prologue
    .line 3230
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setActive(Ljava/lang/Object;Z)V

    .line 3231
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 3205
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 3207
    if-eqz p1, :cond_0

    .line 3208
    invoke-static {p1, p0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->access$300(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;Landroid/os/Handler;)V

    .line 3210
    :cond_0
    return-void

    .line 3205
    :cond_1
    iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCaptioningEnabled(Z)V
    .locals 2

    .prologue
    .line 3332
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mCaptioningEnabled:Z

    if-eq v0, p1, :cond_1

    .line 3333
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mCaptioningEnabled:Z

    .line 3334
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3335
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3336
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3338
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onCaptioningEnabledChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3335
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3342
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3344
    :cond_1
    return-void

    .line 3339
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 3396
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 3397
    return-void
.end method

.method public setFlags(I)V
    .locals 1

    .prologue
    .line 3214
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setFlags(Ljava/lang/Object;I)V

    .line 3215
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 3300
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMediaButtonReceiver(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 3301
    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    .prologue
    .line 3288
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mMetadata:Landroid/support/v4/media/MediaMetadataCompat;

    .line 3289
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3291
    return-void

    .line 3290
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    .prologue
    .line 3267
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 3268
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3269
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3270
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3272
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3269
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3276
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3277
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_2
    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3279
    return-void

    .line 3278
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 3273
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setPlaybackToLocal(I)V
    .locals 1

    .prologue
    .line 3219
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToLocal(Ljava/lang/Object;I)V

    .line 3220
    return-void
.end method

.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 2

    .prologue
    .line 3224
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 3225
    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v1

    .line 3224
    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3226
    return-void
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3305
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mQueue:Ljava/util/List;

    .line 3306
    const/4 v0, 0x0

    .line 3307
    if-eqz p1, :cond_1

    .line 3308
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3309
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 3310
    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3313
    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setQueue(Ljava/lang/Object;Ljava/util/List;)V

    .line 3314
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 3318
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setQueueTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 3319
    return-void
.end method

.method public setRatingType(I)V
    .locals 2

    .prologue
    .line 3323
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 3324
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRatingType:I

    .line 3328
    :goto_0
    return-void

    .line 3326
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi22;->setRatingType(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setRepeatMode(I)V
    .locals 2

    .prologue
    .line 3348
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I

    if-eq v0, p1, :cond_1

    .line 3349
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I

    .line 3350
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3351
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3352
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3354
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onRepeatModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3351
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3358
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3360
    :cond_1
    return-void

    .line 3355
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 3295
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setSessionActivity(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 3296
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 2

    .prologue
    .line 3380
    iget v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleMode:I

    if-eq v0, p1, :cond_1

    .line 3381
    iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleMode:I

    .line 3382
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3383
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3384
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3386
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onShuffleModeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3383
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3390
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3392
    :cond_1
    return-void

    .line 3387
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 2

    .prologue
    .line 3364
    iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleModeEnabled:Z

    if-eq v0, p1, :cond_1

    .line 3365
    iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleModeEnabled:Z

    .line 3366
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3367
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 3368
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    .line 3370
    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onShuffleModeChangedDeprecated(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3367
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3374
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3376
    :cond_1
    return-void

    .line 3371
    :catch_0
    move-exception v0

    goto :goto_1
.end method
