.class Lcn/nubia/music/MediaPlaybackService$1;
.super Landroid/telephony/PhoneStateListener;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 292
    if-ne p1, v2, :cond_1

    .line 293
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$200(Lcn/nubia/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$102(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 295
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->pause()V

    .line 296
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v2}, Lcn/nubia/music/MediaPlaybackService;->access$302(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    if-nez p1, :cond_0

    .line 299
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$300(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$100(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; second = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    .line 301
    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$200(Lcn/nubia/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$302(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 303
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$100(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$200(Lcn/nubia/music/MediaPlaybackService;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$1;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
