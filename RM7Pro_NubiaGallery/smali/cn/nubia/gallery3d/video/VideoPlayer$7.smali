.class Lcn/nubia/gallery3d/video/VideoPlayer$7;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcn/nubia/gallery3d/video/AudioFocus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/video/VideoPlayer;->setAudioFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$7;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLossFocus()V
    .locals 1

    .line 418
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$7;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->pause()V

    .line 419
    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$7;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$700(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/video/AudioFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->releaseAudioFocus()V

    return-void
.end method
