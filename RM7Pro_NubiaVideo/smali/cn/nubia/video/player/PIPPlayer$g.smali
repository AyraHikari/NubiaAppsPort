.class Lcn/nubia/video/player/PIPPlayer$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;
.implements Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;
.implements Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/PIPPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/PIPPlayer;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/PIPPlayer;Lcn/nubia/video/player/PIPPlayer$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/PIPPlayer$g;-><init>(Lcn/nubia/video/player/PIPPlayer;)V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcn/nubia/video/mediajni/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/PIPPlayer;->b(Lcn/nubia/video/player/PIPPlayer;Z)Z

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->c(Lcn/nubia/video/player/PIPPlayer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->pause()V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->o(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/player/PIPPlayer$f;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer$f;->i(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->q(Lcn/nubia/video/player/PIPPlayer;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->p(Lcn/nubia/video/player/PIPPlayer;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->r(Lcn/nubia/video/player/PIPPlayer;)V

    :cond_0
    return-void
.end method

.method public onError(Lcn/nubia/video/mediajni/IMediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->s(Lcn/nubia/video/player/PIPPlayer;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Lcn/nubia/video/mediajni/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->t(Lcn/nubia/video/player/PIPPlayer;)I

    move-result p1

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->t(Lcn/nubia/video/player/PIPPlayer;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->seekTo(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->start()V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->c(Lcn/nubia/video/player/PIPPlayer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->pause()V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$g;->a:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->o(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/player/PIPPlayer$f;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer$f;->i(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
