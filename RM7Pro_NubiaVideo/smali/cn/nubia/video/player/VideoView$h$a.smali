.class Lcn/nubia/video/player/VideoView$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/VideoView$h;->onError(Lcn/nubia/video/mediajni/IMediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/VideoView$h;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$h$a;->a:Lcn/nubia/video/player/VideoView$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$h$a;->a:Lcn/nubia/video/player/VideoView$h;

    iget-object p2, p2, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$h$a;->a:Lcn/nubia/video/player/VideoView$h;

    iget-object p2, p2, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/nubia/video/player/VideoView;->A(Lcn/nubia/video/player/VideoView;Z)Z

    .line 3
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$h$a;->a:Lcn/nubia/video/player/VideoView$h;

    iget-object p2, p2, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcn/nubia/video/player/VideoView;->s(Lcn/nubia/video/player/VideoView;I)I

    .line 4
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$h$a;->a:Lcn/nubia/video/player/VideoView$h;

    iget-object p2, p2, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/player/VideoView$h$a;->a:Lcn/nubia/video/player/VideoView$h;

    iget-object v0, v0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->p(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    invoke-interface {p2, v0}, Lb/a/a/e/f;->a(I)V

    .line 5
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_0
    return-void
.end method
