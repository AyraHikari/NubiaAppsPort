.class Lcn/nubia/video/player/ControllerBase$TurnoverListener;
.super Ljava/lang/Object;
.source "ControllerBase.java"

# interfaces
.implements Lcn/nubia/video/player/common/PlayMotion$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/ControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TurnoverListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/ControllerBase;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/ControllerBase;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcn/nubia/video/player/ControllerBase$TurnoverListener;->this$0:Lcn/nubia/video/player/ControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/ControllerBase;Lcn/nubia/video/player/ControllerBase$1;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcn/nubia/video/player/ControllerBase$TurnoverListener;-><init>(Lcn/nubia/video/player/ControllerBase;)V

    return-void
.end method


# virtual methods
.method public TurnDown()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase$TurnoverListener;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object v0, v0, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase$TurnoverListener;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object v0, v0, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase$TurnoverListener;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object v0, v0, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->pause()V

    :cond_0
    return-void
.end method

.method public TurnUp()V
    .locals 0

    return-void
.end method
