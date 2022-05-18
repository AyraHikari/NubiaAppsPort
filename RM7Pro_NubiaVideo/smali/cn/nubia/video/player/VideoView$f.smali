.class Lcn/nubia/video/player/VideoView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/IMediaPlayer$OnCompletionListener;


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
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$f;->a:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcn/nubia/video/mediajni/IMediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$f;->a:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->s(Lcn/nubia/video/player/VideoView;I)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$f;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$f;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/VideoView$f;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->p(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    invoke-interface {p1, v0}, Lb/a/a/e/f;->a(I)V

    :cond_0
    return-void
.end method
