.class Lcn/nubia/music/MediaPlaybackService$14;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->registerFancyIconReceiver()V
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
    .line 833
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$14;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$14;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getInnerPlayerState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 837
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$14;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$3000(Lcn/nubia/music/MediaPlaybackService;Z)V

    .line 841
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$14;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$3000(Lcn/nubia/music/MediaPlaybackService;Z)V

    goto :goto_0
.end method
