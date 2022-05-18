.class public abstract Lcn/nubia/music/online/api/NubiaStreamPlayer;
.super Ljava/lang/Object;
.source "NubiaStreamPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/online/api/NubiaStreamPlayer$INubiaStreamPlayerCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcn/nubia/music/online/api/NubiaStreamPlayer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    const-class v1, Lcn/nubia/music/online/api/NubiaStreamPlayer;

    monitor-enter v1

    .line 10
    const/4 v0, 0x7

    :try_start_0
    invoke-static {p0, v0}, Lcn/nubia/music/online/api/NubiaManagerFactory;->createManager(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcn/nubia/music/online/api/NubiaStreamPlayer;

    if-eqz v2, :cond_0

    .line 13
    check-cast v0, Lcn/nubia/music/online/api/NubiaStreamPlayer;

    monitor-exit v1

    return-object v0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "failed to create NubiaStreamPlayer"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract downloadProgress()J
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract isMusicCacheExist()Z
.end method

.method public abstract pause()V
.end method

.method public abstract registerCallback(Lcn/nubia/music/online/api/NubiaStreamPlayer$INubiaStreamPlayerCallback;)V
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract start()V
.end method
