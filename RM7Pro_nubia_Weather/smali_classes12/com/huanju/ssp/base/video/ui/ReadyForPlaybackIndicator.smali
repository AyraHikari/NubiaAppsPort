.class public Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;
.super Ljava/lang/Object;
.source "ReadyForPlaybackIndicator.java"


# static fields
.field private static final SHOW_LOGS:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFailedToPrepareUiForPlayback:Z

.field private mSurfaceTextureAvailable:Z

.field private mVideoSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    return-void
.end method


# virtual methods
.method public isFailedToPrepareUiForPlayback()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    return v0
.end method

.method public isReadyForPlayback()Z
    .locals 4

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isVideoSizeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isSurfaceTextureAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 31
    .local v0, "isReadyForPlayback":Z
    :goto_0
    sget-object v1, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReadyForPlayback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return v0

    .line 30
    .end local v0    # "isReadyForPlayback":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSurfaceTextureAvailable()Z
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSurfaceTextureAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-boolean v0, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    return v0
.end method

.method public isVideoSizeAvailable()Z
    .locals 4

    .prologue
    .line 19
    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mVideoSize:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mVideoSize:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 20
    .local v0, "isVideoSizeAvailable":Z
    :goto_0
    sget-object v1, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVideoSizeAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huanju/ssp/base/video/utils/Logger;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v0

    .line 19
    .end local v0    # "isVideoSizeAvailable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFailedToPrepareUiForPlayback(Z)V
    .locals 0
    .param p1, "failed"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mFailedToPrepareUiForPlayback:Z

    .line 50
    return-void
.end method

.method public setSurfaceTextureAvailable(Z)V
    .locals 0
    .param p1, "available"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mSurfaceTextureAvailable:Z

    .line 37
    return-void
.end method

.method public setVideoSize(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "videoHeight"    # Ljava/lang/Integer;
    .param p2, "videoWidth"    # Ljava/lang/Integer;

    .prologue
    .line 40
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->mVideoSize:Landroid/util/Pair;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/huanju/ssp/base/video/ui/ReadyForPlaybackIndicator;->isReadyForPlayback()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
