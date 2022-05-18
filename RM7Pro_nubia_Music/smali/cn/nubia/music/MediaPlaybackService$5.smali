.class Lcn/nubia/music/MediaPlaybackService$5;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->showIconAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$5;->b:Lcn/nubia/music/MediaPlaybackService;

    iput-object p2, p0, Lcn/nubia/music/MediaPlaybackService$5;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1469
    :try_start_0
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$5;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcn/nubia/music/MediaPlaybackService;->access$5200()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "fancyIcon"

    const-string v3, "anim_bg_running"

    iget-object v4, p0, Lcn/nubia/music/MediaPlaybackService$5;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1474
    :goto_0
    return-void

    .line 1471
    :catch_0
    move-exception v0

    .line 1472
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
