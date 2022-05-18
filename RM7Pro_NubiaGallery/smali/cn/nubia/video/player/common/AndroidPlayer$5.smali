.class Lcn/nubia/video/player/common/AndroidPlayer$5;
.super Ljava/lang/Object;
.source "AndroidPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/common/AndroidPlayer;->setOnVideoSizeChangedListener(Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/common/AndroidPlayer;

.field final synthetic val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/common/AndroidPlayer;Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$5;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    iput-object p2, p0, Lcn/nubia/video/player/common/AndroidPlayer$5;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 1

    .line 247
    iget-object p1, p0, Lcn/nubia/video/player/common/AndroidPlayer$5;->val$listener:Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    iget-object v0, p0, Lcn/nubia/video/player/common/AndroidPlayer$5;->this$0:Lcn/nubia/video/player/common/AndroidPlayer;

    invoke-interface {p1, v0, p2, p3}, Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcn/nubia/video/player/common/IMediaPlayer;II)V

    return-void
.end method
