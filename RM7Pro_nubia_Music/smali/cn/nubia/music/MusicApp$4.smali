.class Lcn/nubia/music/MusicApp$4;
.super Landroid/content/BroadcastReceiver;
.source "MusicApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MusicApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MusicApp;


# direct methods
.method constructor <init>(Lcn/nubia/music/MusicApp;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcn/nubia/music/MusicApp$4;->a:Lcn/nubia/music/MusicApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 182
    const-string v1, "cn.nubia.music.preset.service.exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->isRunMonkey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->exitApp()V

    .line 185
    :cond_0
    return-void
.end method
