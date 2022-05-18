.class Lcn/nubia/music/activity/MediaPlaybackActivity$16;
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
    .line 604
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 607
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 608
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 610
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    const-string v1, "com.bean.music.preset.CurrentAlbumChange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    const-string v1, "cn.nubia.music.preset.update.link"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1200(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 615
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2002(Lcn/nubia/music/activity/MediaPlaybackActivity;Z)Z

    .line 617
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2200(Lcn/nubia/music/activity/MediaPlaybackActivity;)V

    .line 618
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1402(Lcn/nubia/music/activity/MediaPlaybackActivity;Z)Z

    .line 619
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1800(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 620
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1900(Lcn/nubia/music/activity/MediaPlaybackActivity;J)V

    .line 634
    :cond_1
    :goto_0
    return-void

    .line 622
    :cond_2
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1402(Lcn/nubia/music/activity/MediaPlaybackActivity;Z)Z

    .line 624
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1700(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 627
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1200(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$16;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2002(Lcn/nubia/music/activity/MediaPlaybackActivity;Z)Z

    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    goto :goto_1
.end method
