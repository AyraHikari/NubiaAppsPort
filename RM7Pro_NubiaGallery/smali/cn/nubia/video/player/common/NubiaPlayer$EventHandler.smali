.class Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "NubiaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/common/NubiaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mNubiaPlayer:Lcn/nubia/video/player/common/NubiaPlayer;

.field final synthetic this$0:Lcn/nubia/video/player/common/NubiaPlayer;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/common/NubiaPlayer;Lcn/nubia/video/player/common/NubiaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    .line 99
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 100
    iput-object p2, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/player/common/NubiaPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v0, v2}, Lcn/nubia/video/player/common/NubiaPlayer;->access$100(Lcn/nubia/video/player/common/NubiaPlayer;Z)V

    .line 138
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/common/NubiaPlayer;->access$500(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/common/NubiaPlayer;->access$500(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/player/common/NubiaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/player/common/IMediaPlayer;II)Z

    :cond_1
    return-void

    .line 131
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/common/NubiaPlayer;->access$300(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/common/NubiaPlayer;->access$300(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/player/common/NubiaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 133
    invoke-interface {v0, v1, v2, p1}, Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcn/nubia/video/player/common/IMediaPlayer;II)V

    :cond_3
    return-void

    .line 126
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$300(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 127
    iget-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$400(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-interface {p1, v0}, Lcn/nubia/video/player/common/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcn/nubia/video/player/common/IMediaPlayer;)V

    :cond_5
    return-void

    .line 112
    :cond_6
    iget-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {p1, v2}, Lcn/nubia/video/player/common/NubiaPlayer;->access$100(Lcn/nubia/video/player/common/NubiaPlayer;Z)V

    .line 114
    iget-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$200(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 115
    iget-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$200(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-interface {p1, v0}, Lcn/nubia/video/player/common/IMediaPlayer$OnCompletionListener;->onCompletion(Lcn/nubia/video/player/common/IMediaPlayer;)V

    :cond_7
    return-void

    .line 107
    :cond_8
    iget-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$000(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 108
    iget-object p1, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/common/NubiaPlayer;->access$000(Lcn/nubia/video/player/common/NubiaPlayer;)Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/common/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/player/common/NubiaPlayer;

    invoke-interface {p1, v0}, Lcn/nubia/video/player/common/IMediaPlayer$OnPreparedListener;->onPrepared(Lcn/nubia/video/player/common/IMediaPlayer;)V

    :cond_9
    return-void
.end method
