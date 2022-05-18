.class Lcn/nubia/video/player/ControllerBase$1;
.super Ljava/lang/Object;
.source "ControllerBase.java"

# interfaces
.implements Lcn/nubia/gallery3d/video/AudioFocus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/ControllerBase;->setAudioFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/ControllerBase;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/ControllerBase;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/nubia/video/player/ControllerBase$1;->this$0:Lcn/nubia/video/player/ControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLossFocus()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase$1;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object v0, v0, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 41
    iget-object v0, p0, Lcn/nubia/video/player/ControllerBase$1;->this$0:Lcn/nubia/video/player/ControllerBase;

    iget-object v0, v0, Lcn/nubia/video/player/ControllerBase;->mVideoView:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->pause()V

    return-void
.end method
