.class Lcn/nubia/video/player/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/l;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/l;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    invoke-virtual {p1}, Lcn/nubia/video/player/l;->onFinish()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    invoke-static {p1}, Lcn/nubia/video/player/l;->t(Lcn/nubia/video/player/l;)Lcn/nubia/video/player/n;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/n;->A()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    invoke-static {p1}, Lcn/nubia/video/player/l;->t(Lcn/nubia/video/player/l;)Lcn/nubia/video/player/n;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/n;->A()V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    invoke-static {p1}, Lcn/nubia/video/player/l;->t(Lcn/nubia/video/player/l;)Lcn/nubia/video/player/n;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/n;->t()V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getPlayerState()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->K()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/nubia/video/player/c;->d:Z

    .line 8
    invoke-static {p1}, Lcn/nubia/video/player/l;->t(Lcn/nubia/video/player/l;)Lcn/nubia/video/player/n;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/n;->u()V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->c0()V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    invoke-static {p1}, Lcn/nubia/video/player/l;->t(Lcn/nubia/video/player/l;)Lcn/nubia/video/player/n;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/n;->A()V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    invoke-static {p1}, Lcn/nubia/video/player/l;->t(Lcn/nubia/video/player/l;)Lcn/nubia/video/player/n;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/n;->s()V

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/player/l$a;->a:Lcn/nubia/video/player/l;

    invoke-static {p1}, Lcn/nubia/video/player/l;->t(Lcn/nubia/video/player/l;)Lcn/nubia/video/player/n;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/n;->n()V

    :cond_6
    :goto_0
    return-void
.end method
