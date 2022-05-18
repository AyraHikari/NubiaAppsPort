.class Lcn/nubia/music/fragment/CoverFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/CoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/CoverFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/CoverFragment;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 65
    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0, p2}, Lcn/nubia/music/fragment/CoverFragment;->access$000(Lcn/nubia/music/fragment/CoverFragment;Landroid/content/Intent;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v1, "com.bean.music.preset.CurrentAlbumChange"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/CoverFragment;->access$100(Lcn/nubia/music/fragment/CoverFragment;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v1, "cn.nubia.music.preset.playstatechanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/CoverFragment;->access$200(Lcn/nubia/music/fragment/CoverFragment;)Lcn/nubia/music/ui/CircleMusicView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/CoverFragment;->access$302(Lcn/nubia/music/fragment/CoverFragment;Z)Z

    .line 73
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/CoverFragment;->access$300(Lcn/nubia/music/fragment/CoverFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/CoverFragment;->access$200(Lcn/nubia/music/fragment/CoverFragment;)Lcn/nubia/music/ui/CircleMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/ui/CircleMusicView;->startCircleSurfaceView()V

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/CoverFragment;->access$200(Lcn/nubia/music/fragment/CoverFragment;)Lcn/nubia/music/ui/CircleMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/ui/CircleMusicView;->pauseCircleSurfaceView()V

    goto :goto_0

    .line 79
    :cond_4
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/music/fragment/CoverFragment;->access$302(Lcn/nubia/music/fragment/CoverFragment;Z)Z

    .line 81
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/CoverFragment;->access$300(Lcn/nubia/music/fragment/CoverFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/CoverFragment;->access$200(Lcn/nubia/music/fragment/CoverFragment;)Lcn/nubia/music/ui/CircleMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/ui/CircleMusicView;->startCircleSurfaceView()V

    goto :goto_0

    .line 84
    :cond_5
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/music/fragment/CoverFragment$1;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/CoverFragment;->access$200(Lcn/nubia/music/fragment/CoverFragment;)Lcn/nubia/music/ui/CircleMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/music/ui/CircleMusicView;->pauseCircleSurfaceView()V

    goto :goto_0
.end method
