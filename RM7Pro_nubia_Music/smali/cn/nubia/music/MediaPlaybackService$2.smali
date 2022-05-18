.class Lcn/nubia/music/MediaPlaybackService$2;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->registerExternalStorageListener()V
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
    .line 1291
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$2;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1294
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$2;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$4300(Lcn/nubia/music/MediaPlaybackService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService$MountIntentServiceInService;->startService(Landroid/content/Context;)V

    .line 1295
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 1297
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$2;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$4100(Lcn/nubia/music/MediaPlaybackService;Z)V

    .line 1299
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$2;->a:Lcn/nubia/music/MediaPlaybackService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$4402(Lcn/nubia/music/MediaPlaybackService;Z)Z

    .line 1300
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$2;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->closeExternalStorageFiles(Ljava/lang/String;)V

    .line 1302
    :cond_0
    return-void
.end method
