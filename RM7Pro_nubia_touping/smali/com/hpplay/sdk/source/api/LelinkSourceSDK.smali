.class public Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIO_CHANNEL_IN_MONO:I = 0x1

.field public static final AUDIO_CHANNEL_IN_STEREO:I = 0x2

.field public static final AUDIO_SAMPLERATE_16K:I = 0x3e80

.field public static final AUDIO_SAMPLERATE_44K:I = 0xac44

.field public static final AUDIO_SAMPLERATE_48K:I = 0xbb80

.field public static final BITRATE_HIGH:I = 0x4

.field public static final BITRATE_LOW:I = 0x6

.field public static final BITRATE_MIDDLE:I = 0x5

.field public static final CREATE_TYPE_LOCAL_CACHE:I = 0x7

.field public static final MEDIA_TYPE_AUDIO:I = 0x65

.field public static final MEDIA_TYPE_IMAGE:I = 0x67

.field public static final MEDIA_TYPE_VIDEO:I = 0x66

.field public static final MIRROR_LOADING:I = 0x1

.field public static final MIRROR_PLAYING:I = 0x5

.field public static final MUSIC_LOADING:I = 0x3

.field public static final MUSIC_PAUSE:I = 0xa

.field public static final MUSIC_PLAYING:I = 0x7

.field public static final PICTURE_LOADING:I = 0x4

.field public static final PICTURE_PLAYING:I = 0x8

.field public static final PLAYBACK_SPEED1:F = 0.5f

.field public static final PLAYBACK_SPEED2:F = 0.75f

.field public static final PLAYBACK_SPEED3:F = 1.0f

.field public static final PLAYBACK_SPEED4:F = 1.25f

.field public static final PLAYBACK_SPEED5:F = 1.5f

.field public static final PLAYBACK_SPEED6:F = 2.0f

.field public static final PLAY_STOPED:I = 0x0

.field private static final PROCESS_NAME:Ljava/lang/String; = "lelinkps"

.field public static final RESOLUTION_2K:I = 0x64

.field public static final RESOLUTION_AUTO:I = 0x3

.field public static final RESOLUTION_HIGH:I = 0x1

.field public static final RESOLUTION_MIDDLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LelinkSourceSDK"

.field public static final VIDEO_LOADING:I = 0x2

.field public static final VIDEO_PAUSE:I = 0x9

.field public static final VIDEO_PLAYING:I = 0x6

.field private static mLelinkSDKController:Lcom/hpplay/sdk/source/api/LelinkSourceSDK;


# instance fields
.field private isChildProcessBind:Z

.field private isDebug:Z

.field private isDebugTimestamp:Z

.field private mAppSecret:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mAppid:Ljava/lang/String;

.field private mBindSdkListener:Lcom/hpplay/sdk/source/api/IBindSdkListener;

.field private mConnectListener:Lcom/hpplay/sdk/source/api/IConnectListener;

.field private mContext:Landroid/content/Context;

.field private mDebugAVListener:Lcom/hpplay/sdk/source/api/IDebugAVListener;

.field private mDebugVideoFile:Ljava/lang/String;

.field private mDisplayListener:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

.field private mIBrowseListener:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

.field private mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

.field private mInteractiveAdListener:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

.field private mLogCallback:Lcom/hpplay/sdk/source/api/ILogCallback;

.field private mOaid:Ljava/lang/String;

.field private mPlayerListener:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isDebug:Z

    .line 88
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isDebugTimestamp:Z

    .line 89
    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isChildProcessBind:Z

    return-void
.end method

.method private checkForOption(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 531
    if-nez p2, :cond_0

    move v0, v1

    .line 541
    :goto_0
    return v0

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v1

    invoke-interface {v0, p1, v2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 536
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 537
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 539
    goto :goto_0

    :cond_2
    move v0, v1

    .line 541
    goto :goto_0
.end method

.method public static getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 2

    .prologue
    .line 93
    const-class v1, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mLelinkSDKController:Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;-><init>()V

    sput-object v0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mLelinkSDKController:Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    .line 97
    :cond_0
    sget-object v0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mLelinkSDKController:Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isMyApp(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 231
    :try_start_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 232
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 233
    if-nez v0, :cond_0

    move v0, v1

    .line 246
    :goto_0
    return v0

    .line 236
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 237
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 238
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v2, "LelinkSourceSDK"

    invoke-static {v2, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v0, v1

    .line 246
    goto :goto_0
.end method


# virtual methods
.method public addPinCodeToLelinkServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->addPinCodeToLelinkServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 433
    :cond_0
    return-void
.end method

.method public addQRCodeToLelinkServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->addQRCodeToLelinkServiceInfo(Ljava/lang/String;Lcom/hpplay/sdk/source/browse/api/IParceResultListener;)V

    .line 427
    :cond_0
    return-void
.end method

.method public addVolume()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->addVolume()V

    .line 373
    :cond_0
    return-void
.end method

.method public bindOfChildProcess()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isChildProcessBind:Z

    .line 128
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->bindSdk()V

    .line 129
    return-void
.end method

.method public bindSdk()V
    .locals 8

    .prologue
    .line 132
    iget-object v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppid:Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppSecret:Ljava/lang/String;

    iget-object v4, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppVersion:Ljava/lang/String;

    iget-object v6, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mOaid:Ljava/lang/String;

    iget-object v7, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mBindSdkListener:Lcom/hpplay/sdk/source/api/IBindSdkListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    .line 133
    return-void
.end method

.method public bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    .line 137
    return-void
.end method

.method public bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    .line 141
    return-void
.end method

.method public bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V
    .locals 8

    .prologue
    .line 181
    :try_start_0
    const-string v0, "LelinkSourceSDK"

    const-string v1, "start bind sdk"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 183
    invoke-static {v1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isMyApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isChildProcessBind:Z

    if-eqz v0, :cond_7

    .line 184
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/b/a;->a()Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    .line 185
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->bindSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hpplay/sdk/source/api/IBindSdkListener;)V

    .line 186
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mIBrowseListener:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-object v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mIBrowseListener:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setBrowseResultListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mConnectListener:Lcom/hpplay/sdk/source/api/IConnectListener;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-object v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mConnectListener:Lcom/hpplay/sdk/source/api/IConnectListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mPlayerListener:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-object v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mPlayerListener:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setPlayListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mInteractiveAdListener:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-object v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mInteractiveAdListener:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setInteractiveListener(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mDebugAVListener:Lcom/hpplay/sdk/source/api/IDebugAVListener;

    if-eqz v0, :cond_5

    .line 199
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-object v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mDebugAVListener:Lcom/hpplay/sdk/source/api/IDebugAVListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDebugAVListener(Lcom/hpplay/sdk/source/api/IDebugAVListener;)V

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mDisplayListener:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    if-eqz v0, :cond_6

    .line 202
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-object v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mDisplayListener:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDisplayListener(Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;)V

    .line 204
    :cond_6
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isDebug:Z

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDebugMode(Z)V

    .line 205
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isDebugTimestamp:Z

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDebugTimestamp(Z)V

    .line 206
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    iget-object v1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mDebugVideoFile:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDebugVideoFile(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_7
    const-string v0, "LelinkSourceSDK"

    const-string v1, "is process sdk"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public canPlayLocalMedia(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->canPlayLocalMedia(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->canPlayScreen(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->connect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 314
    :cond_0
    return-void
.end method

.method public disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->disConnect(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->getConnectInfos()Ljava/util/List;

    move-result-object v0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs getOption(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->getOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    const v1, 0x100032

    if-ne p1, v1, :cond_0

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 489
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportDanmaku(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 519
    const v0, 0x100063

    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->checkForOption(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportQueryRate(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 523
    const v0, 0x100037

    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->checkForOption(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public isSupportRate(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z
    .locals 1

    .prologue
    .line 527
    const v0, 0x100035

    invoke-direct {p0, v0, p1}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->checkForOption(ILcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->onAdClosed(Lcom/hpplay/sdk/source/browse/api/AdInfo;II)V

    .line 445
    :cond_0
    return-void
.end method

.method public onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->onAdShow(Lcom/hpplay/sdk/source/browse/api/AdInfo;I)V

    .line 439
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->pause()V

    .line 367
    :cond_0
    return-void
.end method

.method public queryRate()V
    .locals 3

    .prologue
    .line 558
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100037

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->resume()V

    .line 361
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->seekTo(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public sendDanmaku(Lcom/hpplay/sdk/source/bean/DanmakuBean;)V
    .locals 4

    .prologue
    .line 501
    if-nez p1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    const v1, 0x100063

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setOption(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendDanmakuProperty(Lcom/hpplay/sdk/source/bean/DanmakuPropertyBean;)V
    .locals 4

    .prologue
    .line 510
    if-nez p1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    const v1, 0x100064

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setOption(I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setBindSdkListener(Lcom/hpplay/sdk/source/api/IBindSdkListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mBindSdkListener:Lcom/hpplay/sdk/source/api/IBindSdkListener;

    .line 291
    return-object p0
.end method

.method public setBrowseResultListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 1

    .prologue
    .line 258
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mIBrowseListener:Lcom/hpplay/sdk/source/browse/api/IBrowseListener;

    .line 259
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setBrowseResultListener(Lcom/hpplay/sdk/source/browse/api/IBrowseListener;)V

    .line 262
    :cond_0
    return-object p0
.end method

.method public setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 1

    .prologue
    .line 274
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mConnectListener:Lcom/hpplay/sdk/source/api/IConnectListener;

    .line 275
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setConnectListener(Lcom/hpplay/sdk/source/api/IConnectListener;)V

    .line 278
    :cond_0
    return-object p0
.end method

.method public setDebugAVListener(Lcom/hpplay/sdk/source/api/IDebugAVListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 1

    .prologue
    .line 266
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mDebugAVListener:Lcom/hpplay/sdk/source/api/IDebugAVListener;

    .line 267
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDebugAVListener(Lcom/hpplay/sdk/source/api/IDebugAVListener;)V

    .line 270
    :cond_0
    return-object p0
.end method

.method public setDebugMode(Z)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 2

    .prologue
    .line 145
    :try_start_0
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isDebug:Z

    .line 146
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDebugMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-object p0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDebugTimestamp(Z)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 2

    .prologue
    .line 169
    :try_start_0
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->isDebugTimestamp:Z

    .line 170
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDebugTimestamp(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :cond_0
    :goto_0
    return-object p0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDebugVideoFile(Ljava/lang/String;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 2

    .prologue
    .line 157
    :try_start_0
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mDebugVideoFile:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDebugVideoFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-object p0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDisplayListener(Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 1

    .prologue
    .line 250
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mDisplayListener:Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;

    .line 251
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setDisplayListener(Lcom/hpplay/sdk/source/api/ILelinkDisplayListener;)V

    .line 254
    :cond_0
    return-object p0
.end method

.method public setEnforceEncodeParams(III)V
    .locals 5

    .prologue
    .line 562
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    const v1, 0x100046

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setOption(I[Ljava/lang/Object;)V

    .line 565
    :cond_0
    return-void
.end method

.method public setInteractiveListener(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 1

    .prologue
    .line 468
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mInteractiveAdListener:Lcom/hpplay/sdk/source/api/InteractiveAdListener;

    .line 469
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setInteractiveListener(Lcom/hpplay/sdk/source/api/InteractiveAdListener;)V

    .line 472
    :cond_0
    return-object p0
.end method

.method public setLogCallback(Lcom/hpplay/sdk/source/api/ILogCallback;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 1

    .prologue
    .line 493
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mLogCallback:Lcom/hpplay/sdk/source/api/ILogCallback;

    .line 494
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setLogCallback(Lcom/hpplay/sdk/source/api/ILogCallback;)V

    .line 497
    :cond_0
    return-object p0
.end method

.method public setMute(Z)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setMute(Z)V

    .line 355
    :cond_0
    return-void
.end method

.method public varargs setOption(I[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setOption(I[Ljava/lang/Object;)V

    .line 479
    :cond_0
    return-void
.end method

.method public setPlayListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 1

    .prologue
    .line 282
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mPlayerListener:Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;

    .line 283
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setPlayListener(Lcom/hpplay/sdk/source/api/ILelinkPlayerListener;)V

    .line 286
    :cond_0
    return-object p0
.end method

.method public setRate(F)V
    .locals 5

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 545
    invoke-static {p1, v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->floatCompare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    invoke-static {p1, v1}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->floatCompare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f400000    # 0.75f

    .line 547
    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->floatCompare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 548
    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->floatCompare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 549
    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->floatCompare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 550
    invoke-static {p1, v0}, Lcom/hpplay/sdk/source/common/utils/HapplayUtils;->floatCompare(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->getInstance()Lcom/hpplay/sdk/source/api/LelinkSourceSDK;

    move-result-object v0

    const v1, 0x100035

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->setOption(I[Ljava/lang/Object;)V

    .line 555
    :goto_0
    return-void

    .line 553
    :cond_1
    const-string v0, "LelinkSourceSDK"

    const-string v1, "Invalid rate value"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSdkInitInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppid:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppSecret:Ljava/lang/String;

    .line 105
    return-object p0
.end method

.method public setSdkInitInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppid:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppSecret:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mOaid:Ljava/lang/String;

    .line 113
    return-object p0
.end method

.method public setSdkInitInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/hpplay/sdk/source/api/LelinkSourceSDK;
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppid:Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppSecret:Ljava/lang/String;

    .line 120
    iput-object p4, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mUserId:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mAppVersion:Ljava/lang/String;

    .line 122
    iput-object p6, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mOaid:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public setVolume(I)V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->setVolume(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public startBrowse()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0, v0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->startBrowse(ZZ)V

    .line 296
    return-void
.end method

.method public startBrowse(ZZ)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->startBrowse(ZZ)V

    .line 302
    :cond_0
    return-void
.end method

.method public startMirror(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 4

    .prologue
    .line 342
    invoke-virtual {p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->getLelinkServiceInfo()Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_0

    .line 344
    const-string v1, "LelinkSourceSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMirror 2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->startMirror(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 349
    :cond_1
    return-void
.end method

.method public startMirror(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;ZZ)V
    .locals 5

    .prologue
    .line 331
    if-eqz p1, :cond_0

    .line 332
    const-string v0, "LelinkSourceSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMirror "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    new-instance v0, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;

    invoke-direct {v0}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;-><init>()V

    .line 335
    const v1, 0x100031

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setOption(I[Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v0, p2}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setMirrorAudioEnable(Z)V

    .line 337
    invoke-virtual {v0, p1}, Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;->setLelinkServiceInfo(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;)V

    .line 338
    invoke-virtual {p0, v0}, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->startMirror(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 339
    return-void
.end method

.method public startPlayMedia(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->startPlayMedia(Lcom/hpplay/sdk/source/api/LelinkPlayerInfo;)V

    .line 403
    :cond_0
    return-void
.end method

.method public startPlayMedia(Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->startPlayMedia(Ljava/lang/String;IZ)V

    .line 397
    :cond_0
    return-void
.end method

.method public startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Landroid/net/Uri;I)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2, p3}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Landroid/net/Uri;I)V

    .line 415
    :cond_0
    return-void
.end method

.method public startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->startPlayMediaImmed(Lcom/hpplay/sdk/source/browse/api/LelinkServiceInfo;Ljava/lang/String;IZ)V

    .line 409
    :cond_0
    return-void
.end method

.method public stopBrowse()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->stopBrowse()V

    .line 308
    :cond_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->stopPlay()V

    .line 421
    :cond_0
    return-void
.end method

.method public subVolume()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->subVolume()V

    .line 379
    :cond_0
    return-void
.end method

.method public unBindSdk()V
    .locals 2

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    invoke-interface {v0}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->unBindSdk()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string v1, "LelinkSourceSDK"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updatePCMData(III[BII)V
    .locals 7

    .prologue
    .line 462
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/hpplay/sdk/source/api/LelinkSourceSDK;->mILelinkSourceSdk:Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/hpplay/sdk/source/api/ILelinkSourceSdk;->updatePCMData(III[BII)V

    .line 465
    :cond_0
    return-void
.end method
