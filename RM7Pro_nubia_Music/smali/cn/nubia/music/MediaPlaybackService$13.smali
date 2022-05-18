.class Lcn/nubia/music/MediaPlaybackService$13;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->registerCommandReceiver()V
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
    .line 729
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x15

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 732
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 733
    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIntentReceiver.onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 735
    const-string v1, "cn.nubia.music.preset.musicservicecommand.next"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 736
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 738
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    const-string v1, "cn.nubia.music.preset.musicservicecommand.previous"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 741
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 743
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 745
    :cond_2
    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 746
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 747
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 748
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 749
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v4}, Lcn/nubia/music/MediaPlaybackService;->access$1702(Lcn/nubia/music/MediaPlaybackService;Z)Z

    goto :goto_0

    .line 751
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 754
    :cond_4
    const-string v1, "cn.nubia.music.preset.musicservicecommand.pause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 755
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 757
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v4}, Lcn/nubia/music/MediaPlaybackService;->access$1702(Lcn/nubia/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 758
    :cond_5
    const-string v1, "cn.nubia.music.timer.closemusic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 759
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$400(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$MainHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 761
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v4}, Lcn/nubia/music/MediaPlaybackService;->access$1702(Lcn/nubia/music/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 762
    :cond_6
    const-string v1, "cn.nubia.music.preset.musicservicecommand.appwidgetupdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 764
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2000(Lcn/nubia/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 765
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2000(Lcn/nubia/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 766
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 767
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$2000(Lcn/nubia/music/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 769
    :cond_7
    const-string v1, "cn.nubia.music.preset.musicservicecommand.stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 770
    const-string v0, "stop action"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 772
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 773
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->f()V

    .line 774
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v4}, Lcn/nubia/music/MediaPlaybackService;->access$1200(Lcn/nubia/music/MediaPlaybackService;Z)V

    .line 777
    :cond_8
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v5}, Lcn/nubia/music/MediaPlaybackService;->access$1902(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 778
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v4}, Lcn/nubia/music/MediaPlaybackService;->access$902(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 779
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/music/MediaPlaybackService$b;->a(J)J

    .line 780
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2800(Lcn/nubia/music/MediaPlaybackService;)V

    .line 783
    :cond_9
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->stopSelf()V

    .line 784
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$1000(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 785
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0, v5}, Lcn/nubia/music/MediaPlaybackService;->stopForeground(Z)V

    .line 787
    const-string v0, "force_exit"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 788
    if-eqz v0, :cond_0

    .line 789
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 790
    const-string v1, "cn.nubia.music.preset.service.exit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v1, v0}, Lcn/nubia/music/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 793
    :cond_a
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 798
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$1100(Lcn/nubia/music/MediaPlaybackService;)Lcn/nubia/music/MediaPlaybackService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$2900(Lcn/nubia/music/MediaPlaybackService;)V

    goto/16 :goto_0

    .line 801
    :cond_b
    const-string v1, "cn.nubia.music.preset.musicservicecommand.favorite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$13;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->onClickFavSongBtn()V

    goto/16 :goto_0
.end method
