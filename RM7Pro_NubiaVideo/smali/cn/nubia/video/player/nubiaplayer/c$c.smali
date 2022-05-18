.class Lcn/nubia/video/player/nubiaplayer/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/nubiaplayer/SliderBar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/c;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lcn/nubia/video/player/s/e;

.field final synthetic b:Lcn/nubia/video/player/nubiaplayer/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcn/nubia/video/player/s/e;

    invoke-direct {p1}, Lcn/nubia/video/player/s/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->a:Lcn/nubia/video/player/s/e;

    return-void
.end method

.method private c(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->M(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->N(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->M()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->a:Lcn/nubia/video/player/s/e;

    invoke-virtual {v0}, Lcn/nubia/video/player/s/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->P(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/VideoView;->S(I)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->Q(Lcn/nubia/video/player/nubiaplayer/c;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/c$c;->c(I)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->R(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->t(Lcn/nubia/video/player/nubiaplayer/c;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xa

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->t(Lcn/nubia/video/player/nubiaplayer/c;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    .line 3
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->R(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->t(Lcn/nubia/video/player/nubiaplayer/c;)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->t(Lcn/nubia/video/player/nubiaplayer/c;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    if-eq p1, v0, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->u(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/c;->v(Lcn/nubia/video/player/nubiaplayer/c;Z)Z

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->u(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/c;->R0(Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->u(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/c;->v(Lcn/nubia/video/player/nubiaplayer/c;Z)Z

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->u(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/c;->r(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/c;->R0(Z)V

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->n()V

    return-void
.end method

.method public b(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcn/nubia/video/player/nubiaplayer/c$c;->c(I)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setSpeedIsLong(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setSpeedIsLong(Z)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$c;->b:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/c;->n()V

    return-void
.end method
