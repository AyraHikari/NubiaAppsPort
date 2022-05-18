.class Lcn/nubia/video/player/PIPPlayer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/PIPPlayer;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/PIPPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->d(Lcn/nubia/video/player/PIPPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {}, Lcn/nubia/video/player/s/d;->b()Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/video/player/PIPPlayer;->m(Lcn/nubia/video/player/PIPPlayer;Lcn/nubia/video/mediajni/IMediaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->e(Lcn/nubia/video/player/PIPPlayer;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v2}, Lcn/nubia/video/player/PIPPlayer;->f(Lcn/nubia/video/player/PIPPlayer;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/video/player/s/d;->c(Landroid/content/Context;ILandroid/net/Uri;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/video/player/PIPPlayer;->m(Lcn/nubia/video/player/PIPPlayer;Lcn/nubia/video/mediajni/IMediaPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcn/nubia/video/player/PIPPlayer$g;

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/player/PIPPlayer$g;-><init>(Lcn/nubia/video/player/PIPPlayer;Lcn/nubia/video/player/PIPPlayer$a;)V

    .line 6
    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnErrorListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;)V

    .line 7
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnCompletionListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;)V

    .line 8
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->reset()V

    .line 9
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcn/nubia/video/mediajni/IMediaPlayer;->setAudioStreamType(I)V

    .line 10
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v2}, Lcn/nubia/video/player/PIPPlayer;->f(Lcn/nubia/video/player/PIPPlayer;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcn/nubia/video/mediajni/IMediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 11
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 12
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 13
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->setOnPreparedListener(Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;)V

    .line 14
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->prepare()V

    .line 15
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->g(Lcn/nubia/video/player/PIPPlayer;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->g(Lcn/nubia/video/player/PIPPlayer;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->setAudioTrack(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$a;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->s(Lcn/nubia/video/player/PIPPlayer;)V

    return-void
.end method
