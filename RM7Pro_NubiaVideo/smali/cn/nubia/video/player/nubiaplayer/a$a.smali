.class Lcn/nubia/video/player/nubiaplayer/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/a;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/a;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->A0()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-virtual {p1}, Lcn/nubia/video/player/c;->l()V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->y(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/nubiaplayer/c;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/VideoView;->S(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->Q0()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/a;->onFinish()V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->Q0()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->Q0()V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->D0()V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->u(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getPlayerState()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->v(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->K()V

    goto :goto_0

    .line 11
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/a;->w(Lcn/nubia/video/player/nubiaplayer/a;Z)Z

    .line 12
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->E0()V

    .line 13
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->x(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->c0()V

    goto :goto_0

    .line 14
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->Q0()V

    .line 15
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->C0()V

    goto :goto_0

    .line 16
    :cond_6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$a;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/a;->t(Lcn/nubia/video/player/nubiaplayer/a;)Lcn/nubia/video/player/nubiaplayer/c;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->n()V

    :cond_7
    :goto_0
    return-void
.end method
