.class Lcn/nubia/music/ui/MusicPlayingIndicator$a;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/ui/MusicPlayingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/MusicPlayingIndicator;


# direct methods
.method private constructor <init>(Lcn/nubia/music/ui/MusicPlayingIndicator;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/music/ui/MusicPlayingIndicator$a;->a:Lcn/nubia/music/ui/MusicPlayingIndicator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/ui/MusicPlayingIndicator;Lcn/nubia/music/ui/MusicPlayingIndicator$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcn/nubia/music/ui/MusicPlayingIndicator$a;-><init>(Lcn/nubia/music/ui/MusicPlayingIndicator;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator$a;->a:Lcn/nubia/music/ui/MusicPlayingIndicator;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/music/ui/MusicPlayingIndicator;->access$000(Lcn/nubia/music/ui/MusicPlayingIndicator;I)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/MusicPlayingIndicator$a;->a:Lcn/nubia/music/ui/MusicPlayingIndicator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/ui/MusicPlayingIndicator;->access$000(Lcn/nubia/music/ui/MusicPlayingIndicator;I)V

    goto :goto_0
.end method
