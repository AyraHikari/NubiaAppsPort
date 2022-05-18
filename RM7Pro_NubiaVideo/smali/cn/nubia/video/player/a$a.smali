.class Lcn/nubia/video/player/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    const/4 v0, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {p1}, Lcn/nubia/video/player/a;->b(Lcn/nubia/video/player/a;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {p1}, Lcn/nubia/video/player/a;->f(Lcn/nubia/video/player/a;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {v0}, Lcn/nubia/video/player/a;->d(Lcn/nubia/video/player/a;)I

    move-result v0

    invoke-virtual {p1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {p1, v2}, Lcn/nubia/video/player/a;->c(Lcn/nubia/video/player/a;Z)Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {p1}, Lcn/nubia/video/player/a;->a(Lcn/nubia/video/player/a;)Lcn/nubia/video/player/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/a$b;->a()V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {p1}, Lcn/nubia/video/player/a;->a(Lcn/nubia/video/player/a;)Lcn/nubia/video/player/a$b;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/a$b;->a()V

    goto :goto_0

    .line 6
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {p1, v1}, Lcn/nubia/video/player/a;->c(Lcn/nubia/video/player/a;Z)Z

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {p1}, Lcn/nubia/video/player/a;->f(Lcn/nubia/video/player/a;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/video/player/a;->e(Lcn/nubia/video/player/a;I)I

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {p1}, Lcn/nubia/video/player/a;->f(Lcn/nubia/video/player/a;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/a$a;->a:Lcn/nubia/video/player/a;

    invoke-static {v0}, Lcn/nubia/video/player/a;->d(Lcn/nubia/video/player/a;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_4
    :goto_0
    return-void
.end method
