.class Lcn/nubia/music/MediaPlaybackService$9;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->setShuffleMode(I)V
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
    .line 3088
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$9;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3091
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$9;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$3900(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3092
    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$3202(I)I

    .line 3093
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$9;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$5400(Lcn/nubia/music/MediaPlaybackService;)V

    .line 3094
    invoke-static {v1}, Lcn/nubia/music/MediaPlaybackService;->access$3802(I)I

    .line 3095
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$9;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$600(Lcn/nubia/music/MediaPlaybackService;)V

    .line 3096
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$9;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->play()V

    .line 3097
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$9;->a:Lcn/nubia/music/MediaPlaybackService;

    const-string v1, "cn.nubia.music.preset.metachanged"

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$1000(Lcn/nubia/music/MediaPlaybackService;Ljava/lang/String;)V

    .line 3103
    :goto_0
    return-void

    .line 3101
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$9;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$3602(Lcn/nubia/music/MediaPlaybackService;I)I

    goto :goto_0
.end method
