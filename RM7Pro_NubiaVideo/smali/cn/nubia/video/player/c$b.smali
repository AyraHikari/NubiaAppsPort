.class Lcn/nubia/video/player/c$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/c;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/c$b;->a:Lcn/nubia/video/player/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/c;Lcn/nubia/video/player/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/c$b;-><init>(Lcn/nubia/video/player/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c$b;->a:Lcn/nubia/video/player/c;

    iget-object v0, v0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/c$b;->a:Lcn/nubia/video/player/c;

    iget-object v1, v1, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c$b;->a:Lcn/nubia/video/player/c;

    iget-object v0, v0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/c$b;->a:Lcn/nubia/video/player/c;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/c$b;->a:Lcn/nubia/video/player/c;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/c$b;->a:Lcn/nubia/video/player/c;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->M()V

    :cond_0
    return-void
.end method
