.class Lcn/nubia/video/player/nubiaplayer/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/nubiaplayer/SeekBarView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/c;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Lcn/nubia/video/player/s/e;

.field final synthetic f:Lcn/nubia/video/player/nubiaplayer/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->a:Z

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->b:Z

    .line 4
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->c:I

    .line 5
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->d:I

    .line 6
    new-instance p1, Lcn/nubia/video/player/s/e;

    invoke-direct {p1}, Lcn/nubia/video/player/s/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->e:Lcn/nubia/video/player/s/e;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->d:I

    .line 2
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->c:I

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->a:Z

    return-void
.end method

.method public b(ZI)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/c;->z(Lcn/nubia/video/player/nubiaplayer/c;I)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->E(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->F(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->M()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->e:Lcn/nubia/video/player/s/e;

    invoke-virtual {p1}, Lcn/nubia/video/player/s/e;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->G(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/VideoView;->S(I)V

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->o()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->L(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->M()V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0, p1}, Lcn/nubia/video/player/nubiaplayer/c;->z(Lcn/nubia/video/player/nubiaplayer/c;I)I

    return-void
.end method

.method public d(ZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->H(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->b:Z

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->I(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->M()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->J(Lcn/nubia/video/player/nubiaplayer/c;)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1, v0, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s(II)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1, v1, p2}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->s(II)V

    .line 7
    iget-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->b:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->K(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->R()V

    .line 9
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->b:Z

    .line 10
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->o()V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcn/nubia/video/player/nubiaplayer/c;->z(Lcn/nubia/video/player/nubiaplayer/c;I)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0, p1}, Lcn/nubia/video/player/nubiaplayer/c;->s(Lcn/nubia/video/player/nubiaplayer/c;Z)Z

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->u(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result v1

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/nubiaplayer/c;->R0(Z)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object v0

    iget-object v0, v0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->k(Z)V

    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->c:I

    iget v1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->d:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->B(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/VideoView;->S(I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->a:Z

    :cond_0
    return-void
.end method

.method public g(IZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->e:Lcn/nubia/video/player/s/e;

    invoke-virtual {p2}, Lcn/nubia/video/player/s/e;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p2}, Lcn/nubia/video/player/nubiaplayer/c;->C(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/video/player/VideoView;->S(I)V

    .line 3
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->d:I

    .line 4
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->f:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p2}, Lcn/nubia/video/player/nubiaplayer/c;->o()V

    :cond_0
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->a:Z

    .line 6
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/c$b;->c:I

    :cond_1
    return-void
.end method
