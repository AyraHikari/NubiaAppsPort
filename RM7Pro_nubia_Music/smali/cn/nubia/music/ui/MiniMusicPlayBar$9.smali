.class Lcn/nubia/music/ui/MiniMusicPlayBar$9;
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
    .line 293
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$9;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 297
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isFastClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$9;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    const-string v2, "minibar"

    const-string v3, "minibar_open"

    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$9;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    .line 301
    invoke-static {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$300(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {v1, v2, v3, v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$200(Lcn/nubia/music/ui/MiniMusicPlayBar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.music.preset.PLAYBACK_VIEWER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 304
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$9;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-virtual {v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
