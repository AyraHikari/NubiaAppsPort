.class Lcn/nubia/music/activity/MediaPlaybackActivity$12;
.super Landroid/os/Handler;
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
    .line 376
    iput-object p1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 412
    :goto_0
    return-void

    .line 380
    :pswitch_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 383
    const-string v1, "com.bean.music.preset.CurrentAlbumChange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v1, "cn.nubia.music.preset.update.link"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1200(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 387
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 388
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1300(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {v1, v2, v3}, Lcn/nubia/music/activity/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1402(Lcn/nubia/music/activity/MediaPlaybackActivity;Z)Z

    .line 393
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1600(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/music/app/MusicPlayer;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1502(Lcn/nubia/music/activity/MediaPlaybackActivity;Lcn/nubia/music/app/MusicPlayer$ServiceToken;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    .line 394
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1500(Lcn/nubia/music/activity/MediaPlaybackActivity;)Lcn/nubia/music/app/MusicPlayer$ServiceToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1700(Lcn/nubia/music/activity/MediaPlaybackActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1800(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    move-result-wide v0

    .line 400
    iget-object v2, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v2, v0, v1}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1900(Lcn/nubia/music/activity/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 405
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$2000(Lcn/nubia/music/activity/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0, v4}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1402(Lcn/nubia/music/activity/MediaPlaybackActivity;Z)Z

    .line 408
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/activity/MediaPlaybackActivity$12;->a:Lcn/nubia/music/activity/MediaPlaybackActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/MediaPlaybackActivity;->access$1800(Lcn/nubia/music/activity/MediaPlaybackActivity;)J

    goto/16 :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
