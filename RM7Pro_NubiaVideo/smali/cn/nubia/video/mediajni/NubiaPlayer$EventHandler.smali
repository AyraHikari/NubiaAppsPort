.class Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/mediajni/NubiaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mNubiaPlayer:Lcn/nubia/video/mediajni/NubiaPlayer;

.field final synthetic this$0:Lcn/nubia/video/mediajni/NubiaPlayer;


# direct methods
.method public constructor <init>(Lcn/nubia/video/mediajni/NubiaPlayer;Lcn/nubia/video/mediajni/NubiaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    .line 2
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3
    iput-object p2, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/mediajni/NubiaPlayer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
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

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {v0, v2}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$100(Lcn/nubia/video/mediajni/NubiaPlayer;Z)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$500(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$500(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/mediajni/NubiaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, p1}, Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;->onError(Lcn/nubia/video/mediajni/IMediaPlayer;II)Z

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$300(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {v0}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$300(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/mediajni/NubiaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 7
    invoke-interface {v0, v1, v2, p1}, Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcn/nubia/video/mediajni/IMediaPlayer;II)V

    :cond_3
    return-void

    .line 8
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$300(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnVideoSizeChangedListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$400(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-interface {p1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcn/nubia/video/mediajni/IMediaPlayer;)V

    :cond_5
    return-void

    .line 10
    :cond_6
    iget-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {p1, v2}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$100(Lcn/nubia/video/mediajni/NubiaPlayer;Z)V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$200(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 12
    iget-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$200(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-interface {p1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;->onCompletion(Lcn/nubia/video/mediajni/IMediaPlayer;)V

    :cond_7
    return-void

    .line 13
    :cond_8
    iget-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$000(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 14
    iget-object p1, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->this$0:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-static {p1}, Lcn/nubia/video/mediajni/NubiaPlayer;->access$000(Lcn/nubia/video/mediajni/NubiaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/mediajni/NubiaPlayer$EventHandler;->mNubiaPlayer:Lcn/nubia/video/mediajni/NubiaPlayer;

    invoke-interface {p1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;->onPrepared(Lcn/nubia/video/mediajni/IMediaPlayer;)V

    :cond_9
    return-void
.end method
