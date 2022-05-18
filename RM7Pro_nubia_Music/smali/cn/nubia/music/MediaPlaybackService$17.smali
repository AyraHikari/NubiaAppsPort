.class Lcn/nubia/music/MediaPlaybackService$17;
.super Landroid/os/Handler;
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
    .line 1250
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 1254
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1700(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$4000(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    .line 1255
    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service in use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$1700(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    .line 1257
    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$4000(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->hasMessages(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1256
    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1265
    :goto_0
    return-void

    .line 1263
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$4100(Lcn/nubia/music/MediaPlaybackService;Z)V

    .line 1264
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$17;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$4200(Lcn/nubia/music/MediaPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->stopSelf(I)V

    goto :goto_0
.end method
