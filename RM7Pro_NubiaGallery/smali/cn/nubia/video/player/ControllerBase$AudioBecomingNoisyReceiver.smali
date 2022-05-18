.class Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ControllerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/ControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/ControllerBase;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/ControllerBase;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/video/player/ControllerBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/ControllerBase;Lcn/nubia/video/player/ControllerBase$1;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;-><init>(Lcn/nubia/video/player/ControllerBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object p1, p1, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object p1, p1, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 88
    iget-object p1, p0, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object p1, p1, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object v0, v0, Lcn/nubia/video/player/ControllerBase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object v0, v0, Lcn/nubia/video/player/ControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
