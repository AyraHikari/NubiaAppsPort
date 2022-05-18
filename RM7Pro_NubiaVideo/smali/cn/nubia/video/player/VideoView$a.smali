.class Lcn/nubia/video/player/VideoView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/VideoView;->T()V
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
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->y(Lcn/nubia/video/player/VideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->q(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    if-eq p2, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/VideoView;->r(Lcn/nubia/video/player/VideoView;I)I

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->M()V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->C(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getCurrentPosition()I

    move-result p1

    .line 6
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->q(Lcn/nubia/video/player/VideoView;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->C(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->q(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p2, v0}, Lcn/nubia/video/mediajni/IMediaPlayer;->setAudioTrack(I)V

    .line 8
    :cond_0
    iget-object p2, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->C(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->seekTo(I)V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->R()V

    .line 10
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$a;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->t(Lcn/nubia/video/player/VideoView;)V

    return-void
.end method
