.class Lcn/nubia/music/ui/MiniMusicPlayBar$7;
.super Ljava/lang/Object;
.source "MiniMusicPlayBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/ui/MiniMusicPlayBar;->setPlayView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/MiniMusicPlayBar;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$7;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 271
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isFastClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.music.preset.musicservicecommand.togglepause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$7;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$300(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$7;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    const-string v1, "minibar"

    const-string v2, "minibar"

    const-string v3, "play_pause"

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$200(Lcn/nubia/music/ui/MiniMusicPlayBar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
