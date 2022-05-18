.class public abstract Lcn/nubia/video/player/ControllerBase;
.super Ljava/lang/Object;
.source "ControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/ControllerBase$TurnoverListener;,
        Lcn/nubia/video/player/ControllerBase$NubiaPlayerListener;,
        Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;
    }
.end annotation


# instance fields
.field private final mAudioBecomingNoisyReceiver:Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;

.field private mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

.field protected mCmdManager:Lcn/nubia/video/player/common/CommandManager;

.field protected mContext:Landroid/content/Context;

.field protected mIsPrepared:Z

.field private mPlayMotion:Lcn/nubia/video/player/common/PlayMotion;

.field protected mUri:Landroid/net/Uri;

.field protected mVideoView:Lcn/nubia/video/player/VideoView;

.field protected mbPress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcn/nubia/video/player/ControllerBase;->mbPress:Z

    .line 29
    iput-object p1, p0, Lcn/nubia/video/player/ControllerBase;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcn/nubia/video/player/common/PlayMotion;

    new-instance v1, Lcn/nubia/video/player/ControllerBase$TurnoverListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/video/player/ControllerBase$TurnoverListener;-><init>(Lcn/nubia/video/player/ControllerBase;Lcn/nubia/video/player/ControllerBase$1;)V

    invoke-direct {v0, p1, v1}, Lcn/nubia/video/player/common/PlayMotion;-><init>(Landroid/content/Context;Lcn/nubia/video/player/common/PlayMotion$Listener;)V

    iput-object v0, p0, Lcn/nubia/video/player/ControllerBase;->mPlayMotion:Lcn/nubia/video/player/common/PlayMotion;

    .line 31
    invoke-direct {p0}, Lcn/nubia/video/player/ControllerBase;->setAudioFocus()V

    .line 32
    new-instance p1, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;

    invoke-direct {p1, p0, v2}, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;-><init>(Lcn/nubia/video/player/ControllerBase;Lcn/nubia/video/player/ControllerBase$1;)V

    iput-object p1, p0, Lcn/nubia/video/player/ControllerBase;->mAudioBecomingNoisyReceiver:Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;

    .line 33
    invoke-virtual {p1}, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;->register()V

    return-void
.end method

.method private setAudioFocus()V
    .locals 3

    .line 37
    new-instance v0, Lcn/nubia/gallery3d/video/AudioFocus;

    iget-object v1, p0, Lcn/nubia/video/player/ControllerBase;->mContext:Landroid/content/Context;

    new-instance v2, Lcn/nubia/video/player/ControllerBase$1;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/ControllerBase$1;-><init>(Lcn/nubia/video/player/ControllerBase;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/video/AudioFocus;-><init>(Landroid/content/Context;Lcn/nubia/gallery3d/video/AudioFocus$Listener;)V

    iput-object v0, p0, Lcn/nubia/video/player/ControllerBase;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    return-void
.end method


# virtual methods
.method public abstract getBaseView()Lcn/nubia/video/player/ViewBase;
.end method

.method public abstract isLock()Z
.end method

.method public abstract isPrepared()Z
.end method

.method public onPause()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->pause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public registAudioFocus()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->getAudioFocus()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase;->mAudioBecomingNoisyReceiver:Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;->unregister()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase;->mPlayMotion:Lcn/nubia/video/player/common/PlayMotion;

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Lcn/nubia/video/player/common/PlayMotion;->release()V

    :cond_1
    return-void
.end method

.method public abstract show()V
.end method

.method public unregistAudioFocus()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase;->mAudioFocus:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->releaseAudioFocus()V

    return-void
.end method
