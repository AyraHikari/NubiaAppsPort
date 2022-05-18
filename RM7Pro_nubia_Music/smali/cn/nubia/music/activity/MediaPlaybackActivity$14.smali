.class Lcn/nubia/music/activity/MediaPlaybackActivity$14;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/MediaPlaybackActivity;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x1

    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 457
    const-string v1, "play"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 459
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2200(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 460
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2300(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 461
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1700(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1800(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v6, v7}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1900(Lcn/nubia/music/activity/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 467
    :cond_2
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 468
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2300(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 469
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1700(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1800(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    goto :goto_0

    .line 473
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v6, v7}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1900(Lcn/nubia/music/activity/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 475
    :cond_4
    const-string v1, "com.bean.music.preset.CurrentAlbumChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$14;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2200(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    goto :goto_0
.end method
