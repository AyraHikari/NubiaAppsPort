.class public Lcn/nubia/music/app/MusicPlayer;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/app/MusicPlayer$a;,
        Lcn/nubia/music/app/MusicPlayer$ServiceToken;
    }
.end annotation


# static fields
.field private static final CLICK_INTERVAL:J = 0x1f4L

.field private static final LAST_TIME:J = 0x1f4L

.field public static isBinded:Z

.field public static mService:Lcn/nubia/music/IMediaPlaybackService;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcn/nubia/music/app/MusicPlayer$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/music/app/MusicPlayer;->sConnectionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLocalToNowingPlaying(J)V
    .locals 2

    .prologue
    .line 493
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-nez v0, :cond_1

    .line 495
    :cond_0
    const v0, 0x7f0b0060

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 496
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-static {v1, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/nubia/music/app/MusicPlayer;->enqueueLocal(JI)V

    goto :goto_0
.end method

.method public static addNetToNowingPlaying(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 504
    sget-boolean v0, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    const v0, 0x7f0b0060

    invoke-static {v0}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-static {v1, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 519
    :goto_0
    return-void

    .line 512
    :cond_1
    new-instance v0, Lcn/nubia/music/app/MusicPlayer$1;

    invoke-direct {v0, p0}, Lcn/nubia/music/app/MusicPlayer$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;
    .locals 4

    .prologue
    .line 419
    const-string v0, "MusicPlayer bindToService "

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 421
    if-nez v0, :cond_1

    .line 424
    :goto_0
    new-instance v1, Landroid/content/ContextWrapper;

    invoke-direct {v1, p0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 425
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 426
    new-instance v0, Lcn/nubia/music/app/MusicPlayer$a;

    invoke-direct {v0, p1}, Lcn/nubia/music/app/MusicPlayer$a;-><init>(Landroid/content/ServiceConnection;)V

    .line 427
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v0, Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    invoke-direct {v0, v1}, Lcn/nubia/music/app/MusicPlayer$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    .line 432
    :goto_1
    return-object v0

    .line 431
    :cond_0
    const-string v0, "Failed to bind to service"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static duration()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 134
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 136
    :try_start_0
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcn/nubia/music/IMediaPlaybackService;->duration()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 141
    :cond_0
    :goto_0
    return-wide v0

    .line 137
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static enqueue([JI)V
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 205
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcn/nubia/music/IMediaPlaybackService;->enqueue([JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static enqueueLocal(JI)V
    .locals 2

    .prologue
    .line 379
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0, p1, p2}, Lcn/nubia/music/IMediaPlaybackService;->enqueueLocal(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getAbsolutePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 346
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 348
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    const-string v0, ""

    goto :goto_0

    .line 354
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAlbumImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 37
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcn/nubia/music/IMediaPlaybackService;->getAlbumImageUrl()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    :cond_0
    :goto_0
    return-object v0

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getAlbumName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 181
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v0, ""

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getArtistName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 193
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    const-string v0, ""

    goto :goto_0

    .line 199
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAudioId()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 254
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 256
    :try_start_0
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcn/nubia/music/IMediaPlaybackService;->getAudioId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 261
    :cond_0
    :goto_0
    return-wide v0

    .line 257
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getAudioSessionId()I
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->getAudioSessionId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 342
    :goto_0
    return v0

    .line 339
    :catch_0
    move-exception v0

    .line 342
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getBufferingPrecent()I
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 371
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->getBufferingPrecent()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 375
    :goto_0
    return v0

    .line 372
    :catch_0
    move-exception v0

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInnerPlayerState()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 358
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 360
    :try_start_0
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcn/nubia/music/IMediaPlaybackService;->getInnerPlayerState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 365
    :cond_0
    :goto_0
    return v0

    .line 361
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getMediaMountedCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 325
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 327
    :try_start_0
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcn/nubia/music/IMediaPlaybackService;->getMediaMountedCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 328
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 244
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v0, ""

    goto :goto_0

    .line 250
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getQueue()[J
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 214
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->getQueue()[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    new-array v0, v1, [J

    goto :goto_0

    .line 219
    :cond_0
    new-array v0, v1, [J

    goto :goto_0
.end method

.method public static getQueuePosition()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 66
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 68
    :try_start_0
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcn/nubia/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 69
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getRepeatMode()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 314
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 316
    :try_start_0
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcn/nubia/music/IMediaPlaybackService;->getRepeatMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 321
    :cond_0
    :goto_0
    return v0

    .line 317
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getShuffleMode()I
    .locals 2

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 277
    :try_start_0
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcn/nubia/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 278
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getTrackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 169
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    const-string v0, ""

    goto :goto_0

    .line 175
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static isPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 79
    :try_start_0
    sget-object v1, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcn/nubia/music/IMediaPlaybackService;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 80
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static moveQueueItem(II)V
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 225
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcn/nubia/music/IMediaPlaybackService;->moveQueueItem(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static next()V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->next()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static open([JI)V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcn/nubia/music/IMediaPlaybackService;->open([JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static openFile(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcn/nubia/music/IMediaPlaybackService;->openFile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static play()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->play()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static playAll([JI)V
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/nubia/music/app/MusicPlayer;->playAll([JIZ)V

    .line 459
    return-void
.end method

.method public static playAll([JIZ)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 473
    const-string v1, "seq"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->playAll list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", postion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-boolean v1, Lcn/nubia/music/app/MusicPlayer;->isBinded:Z

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    :cond_0
    const v1, 0x7f0b0060

    new-array v2, v4, [Ljava/lang/Object;

    array-length v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/nubia/music/utils/ResHelper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 479
    sget-object v1, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-static {v1, v0}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void

    .line 482
    :cond_1
    if-eqz p2, :cond_2

    .line 483
    invoke-static {v4}, Lcn/nubia/music/app/MusicPlayer;->setShuffleMode(I)V

    .line 484
    const/4 v1, 0x2

    invoke-static {v1}, Lcn/nubia/music/app/MusicPlayer;->setRepeatMode(I)V

    .line 486
    :cond_2
    if-gez p1, :cond_4

    .line 489
    :goto_1
    if-eqz p2, :cond_3

    const/4 v0, -0x1

    :cond_3
    invoke-static {p0, v0}, Lcn/nubia/music/app/MusicPlayer;->open([JI)V

    goto :goto_0

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public static position()J
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 145
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 147
    :try_start_0
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcn/nubia/music/IMediaPlaybackService;->position()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 152
    :cond_0
    :goto_0
    return-wide v0

    .line 148
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static prev()V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 117
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->prev()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeListTracks([J)I
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcn/nubia/music/IMediaPlaybackService;->removeListTracks([J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 394
    :goto_0
    return v0

    .line 391
    :catch_0
    move-exception v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeTrack(J)I
    .locals 2

    .prologue
    .line 295
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcn/nubia/music/IMediaPlaybackService;->removeTrack(J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 301
    :goto_0
    return v0

    .line 298
    :catch_0
    move-exception v0

    .line 301
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeTracks(II)I
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 287
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0, p1}, Lcn/nubia/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 291
    :goto_0
    return v0

    .line 288
    :catch_0
    move-exception v0

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeTracksAudioId([J)I
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcn/nubia/music/IMediaPlaybackService;->removeTracksAudioId([J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 404
    :goto_0
    return v0

    .line 401
    :catch_0
    move-exception v0

    .line 404
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static seek(J)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 156
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 158
    :try_start_0
    sget-object v2, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v2, p0, p1}, Lcn/nubia/music/IMediaPlaybackService;->seek(J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 163
    :cond_0
    :goto_0
    return-wide v0

    .line 159
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static sendSyncHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 411
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcn/nubia/music/IMediaPlaybackService;->sendSyncHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setQueuePosition(I)V
    .locals 1

    .prologue
    .line 233
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 235
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcn/nubia/music/IMediaPlaybackService;->setQueuePosition(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setRepeatMode(I)V
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 307
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcn/nubia/music/IMediaPlaybackService;->setRepeatMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setShuffleMode(I)V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcn/nubia/music/IMediaPlaybackService;->setShuffleMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static shufflePlayAll([JI)V
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/nubia/music/app/MusicPlayer;->playAll([JIZ)V

    .line 463
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 90
    :try_start_0
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcn/nubia/music/IMediaPlaybackService;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unbindFromService(Lcn/nubia/music/app/MusicPlayer$ServiceToken;)V
    .locals 2

    .prologue
    .line 437
    const-string v0, "unbindFromService"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 438
    if-nez p0, :cond_1

    .line 439
    const-string v0, "Trying to unbind with null token"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lcn/nubia/music/app/MusicPlayer$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    .line 443
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/app/MusicPlayer$a;

    .line 444
    if-nez v0, :cond_2

    .line 445
    const-string v0, "Trying to unbind for unknown Context"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 449
    sget-object v0, Lcn/nubia/music/app/MusicPlayer;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/music/app/MusicPlayer;->mService:Lcn/nubia/music/IMediaPlaybackService;

    goto :goto_0
.end method
