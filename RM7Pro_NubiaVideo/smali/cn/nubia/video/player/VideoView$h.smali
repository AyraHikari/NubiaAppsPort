.class Lcn/nubia/video/player/VideoView$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/IMediaPlayer$OnErrorListener;


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
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/video/mediajni/IMediaPlayer;II)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->y(Lcn/nubia/video/player/VideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p2}, Lcn/nubia/video/player/VideoView;->z(Lcn/nubia/video/player/VideoView;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->z(Lcn/nubia/video/player/VideoView;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->a(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->c(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    mul-int/2addr p1, v0

    const v0, 0x1fe000

    if-gt p1, v0, :cond_0

    .line 3
    invoke-static {}, Lcn/nubia/video/player/s/d;->d()I

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->D(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/s/b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->B(Lcn/nubia/video/player/VideoView;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v1}, Lcn/nubia/video/player/VideoView;->C(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/video/mediajni/IMediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v2}, Lcn/nubia/video/player/VideoView;->w(Lcn/nubia/video/player/VideoView;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/video/player/s/b;->d(Landroid/net/Uri;II)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p3}, Lcn/nubia/video/player/VideoView;->A(Lcn/nubia/video/player/VideoView;Z)Z

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p3}, Lcn/nubia/video/player/VideoView;->e(Lcn/nubia/video/player/VideoView;I)I

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->y(Lcn/nubia/video/player/VideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Try to FFmpeg"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->d(Lcn/nubia/video/player/VideoView;)I

    move-result p3

    invoke-static {p1, p3}, Lcn/nubia/video/player/VideoView;->g(Lcn/nubia/video/player/VideoView;I)V

    return p2

    .line 9
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p3}, Lcn/nubia/video/player/VideoView;->A(Lcn/nubia/video/player/VideoView;Z)Z

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/VideoView;->s(Lcn/nubia/video/player/VideoView;I)I

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->v(Lcn/nubia/video/player/VideoView;)Lb/a/a/e/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->p(Lcn/nubia/video/player/VideoView;)I

    move-result v0

    invoke-interface {p1, v0}, Lb/a/a/e/f;->a(I)V

    .line 13
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->h(Lcn/nubia/video/player/VideoView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const p1, 0x7f0f007f

    .line 15
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView$h;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v1}, Lcn/nubia/video/player/VideoView;->h(Lcn/nubia/video/player/VideoView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/b$a;->e(I)Lcn/nubia/video/commonui/app/b$a;

    const p1, 0x7f0f0074

    new-instance v1, Lcn/nubia/video/player/VideoView$h$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/VideoView$h$a;-><init>(Lcn/nubia/video/player/VideoView$h;)V

    .line 16
    invoke-virtual {v0, p1, v1}, Lcn/nubia/video/commonui/app/b$a;->h(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 17
    invoke-virtual {v0, p2}, Lcn/nubia/video/commonui/app/b$a;->c(Z)Lcn/nubia/video/commonui/app/b$a;

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->n()Lcn/nubia/video/commonui/app/b;

    :cond_2
    return p3
.end method
