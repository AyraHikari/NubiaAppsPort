.class Lcn/nubia/video/player/VideoView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/IMediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$e;->a:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lcn/nubia/video/mediajni/IMediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$e;->a:Lcn/nubia/video/player/VideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/nubia/video/player/VideoView;->s(Lcn/nubia/video/player/VideoView;I)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$e;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$e;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/VideoView$e;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v1}, Lcn/nubia/video/player/VideoView;->p(Lcn/nubia/video/player/VideoView;)I

    move-result v1

    invoke-interface {v0, v1}, Lb/a/a/e/f;->a(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$e;->a:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/video/player/VideoView;->x(Lcn/nubia/video/player/VideoView;I)I

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$e;->a:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/video/player/VideoView;->b(Lcn/nubia/video/player/VideoView;I)I

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$e;->a:Lcn/nubia/video/player/VideoView;

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcn/nubia/video/player/VideoView;->f(Lcn/nubia/video/player/VideoView;I)I

    return-void
.end method
