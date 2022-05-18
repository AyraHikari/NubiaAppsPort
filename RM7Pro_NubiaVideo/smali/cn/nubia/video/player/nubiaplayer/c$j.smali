.class Lcn/nubia/video/player/nubiaplayer/c$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/c;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->y0(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcn/nubia/video/player/p;

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->z0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f00e3

    .line 3
    invoke-virtual {p1, v0}, Lcn/nubia/video/player/p;->g(I)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipLeftTime()I

    move-result v1

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->getClipRightTime()I

    move-result v2

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->r(Lcn/nubia/video/player/nubiaplayer/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->p(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/c$c;

    move-result-object v0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v3

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/video/player/c$c;->h(IIIIZ)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->p(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/c$c;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->t(Lcn/nubia/video/player/nubiaplayer/c;)I

    move-result v2

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getStartTime()I

    move-result v3

    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$j;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SliderBar;->getEndTime()I

    move-result v4

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/video/player/c$c;->h(IIIIZ)V

    :goto_0
    return-void
.end method
