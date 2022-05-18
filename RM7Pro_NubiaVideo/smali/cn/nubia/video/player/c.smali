.class public abstract Lcn/nubia/video/player/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/c$e;,
        Lcn/nubia/video/player/c$c;,
        Lcn/nubia/video/player/c$d;,
        Lcn/nubia/video/player/c$b;,
        Lcn/nubia/video/player/c$f;
    }
.end annotation


# instance fields
.field protected a:Lcn/nubia/video/player/VideoView;

.field protected b:Landroid/content/Context;

.field protected c:Z

.field protected d:Z

.field protected e:Landroid/net/Uri;

.field protected f:Lcn/nubia/video/player/r/b;

.field private g:Lcn/nubia/video/player/s/c;

.field private h:Lcn/nubia/video/player/a;

.field private final i:Lcn/nubia/video/player/c$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/c;->c:Z

    .line 3
    iput-object p1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    .line 4
    new-instance v0, Lcn/nubia/video/player/s/c;

    new-instance v1, Lcn/nubia/video/player/c$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/video/player/c$f;-><init>(Lcn/nubia/video/player/c;Lcn/nubia/video/player/c$a;)V

    invoke-direct {v0, p1, v1}, Lcn/nubia/video/player/s/c;-><init>(Landroid/content/Context;Lcn/nubia/video/player/s/c$a;)V

    iput-object v0, p0, Lcn/nubia/video/player/c;->g:Lcn/nubia/video/player/s/c;

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/player/c;->q()V

    .line 6
    new-instance p1, Lcn/nubia/video/player/c$b;

    invoke-direct {p1, p0, v2}, Lcn/nubia/video/player/c$b;-><init>(Lcn/nubia/video/player/c;Lcn/nubia/video/player/c$a;)V

    iput-object p1, p0, Lcn/nubia/video/player/c;->i:Lcn/nubia/video/player/c$b;

    .line 7
    invoke-virtual {p1}, Lcn/nubia/video/player/c$b;->a()V

    return-void
.end method

.method private m()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/nubia/video/player/c;->c:Z

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast v1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->d0()V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    iget-object v1, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/PlayerActivity;->t(Landroid/net/Uri;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->r()V

    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/player/a;

    iget-object v1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    new-instance v2, Lcn/nubia/video/player/c$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/player/c$a;-><init>(Lcn/nubia/video/player/c;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/player/a;-><init>(Landroid/content/Context;Lcn/nubia/video/player/a$b;)V

    iput-object v0, p0, Lcn/nubia/video/player/c;->h:Lcn/nubia/video/player/a;

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/c;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/video/player/c;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lb/a/b/d/c;->b(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/player/c;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/c;->c:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/video/player/c;->d:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    invoke-static {v0, v1}, Lb/a/b/d/c;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/player/c;->m()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected e()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    const-class v2, Lcn/nubia/video/player/PIPPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->getCurrentPosition()I

    move-result v1

    const-string v2, "seektime"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    iget-object v1, p0, Lcn/nubia/video/player/c;->e:Landroid/net/Uri;

    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->getPlayerType()I

    move-result v1

    const-string v2, "playertype"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->e0()Z

    move-result v1

    const-string v2, "isslomovideo"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    iget-object v2, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    check-cast v2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "video_list_start_player"

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 11
    iget-object v2, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v2}, Lcn/nubia/video/player/VideoView;->getAudioTrackCount()I

    move-result v2

    const-string v3, "audiotrackindex"

    if-le v2, v1, :cond_0

    .line 12
    iget-object v1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->getAudioTrackIndex()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 13
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->getVideoWidth()I

    move-result v1

    const-string v2, "videowidth"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->getVideoHeight()I

    move-result v1

    const-string v2, "videoheight"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16
    iget-object v1, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v1}, Lcn/nubia/video/player/VideoView;->d0()V

    .line 17
    iget-object v1, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public abstract i()Lcn/nubia/video/player/q;
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->b:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/video/player/PlayerActivity;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->M()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->h:Lcn/nubia/video/player/a;

    invoke-virtual {v0}, Lcn/nubia/video/player/a;->g()V

    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->i:Lcn/nubia/video/player/c$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/player/c$b;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/c;->g:Lcn/nubia/video/player/s/c;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcn/nubia/video/player/s/c;->a()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/nubia/video/player/c;->g:Lcn/nubia/video/player/s/c;

    :cond_1
    return-void
.end method

.method public abstract r()V
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c;->h:Lcn/nubia/video/player/a;

    invoke-virtual {v0}, Lcn/nubia/video/player/a;->h()V

    return-void
.end method
