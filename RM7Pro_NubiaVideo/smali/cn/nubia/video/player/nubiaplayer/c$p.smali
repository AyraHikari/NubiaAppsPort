.class Lcn/nubia/video/player/nubiaplayer/c$p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ProgressBar;

.field public e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/ImageView;

.field public k:Landroid/widget/ImageView;

.field public l:Landroid/widget/ImageView;

.field public m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/nubiaplayer/c;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/c;->a0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/view/View;)Landroid/view/View;

    .line 3
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->b0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    const v0, 0x7f09009f

    invoke-virtual {p2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->r:Landroid/view/View;

    .line 4
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->d0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p2}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/c;->c0(Lcn/nubia/video/player/nubiaplayer/c;Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/VideoView;

    .line 5
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->e0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900e2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->a:Landroid/view/View;

    const v0, 0x7f090161

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->n:Landroid/view/View;

    .line 7
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->a:Landroid/view/View;

    const v0, 0x7f0900de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->o:Landroid/view/View;

    const v0, 0x7f0900b6

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->c:Landroid/widget/ImageView;

    .line 9
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->n:Landroid/view/View;

    const v0, 0x7f09015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->p:Landroid/widget/TextView;

    .line 10
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->n:Landroid/view/View;

    const v0, 0x7f09015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->q:Landroid/widget/TextView;

    .line 11
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->a:Landroid/view/View;

    const v0, 0x7f090028

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->b:Landroid/widget/TextView;

    .line 12
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->f0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->d:Landroid/widget/ProgressBar;

    .line 13
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->h0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/c;->g0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 14
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->j0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f09016f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/c;->i0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 15
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->m0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090170

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/c;->l0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 16
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->n0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 17
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->p0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f09007b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/c;->o0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 18
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->r0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0900a2

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/c;->q0(Lcn/nubia/video/player/nubiaplayer/c;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 19
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->s0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 20
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->t0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0900df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    const v1, 0x7f0900dc

    .line 21
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->g:Landroid/view/View;

    .line 22
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    const v1, 0x7f0900dd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->h:Landroid/widget/ImageView;

    .line 23
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    const v1, 0x7f0900bd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->i:Landroid/widget/ImageView;

    .line 24
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    const v1, 0x7f0900e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->j:Landroid/widget/ImageView;

    .line 25
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->u0(Lcn/nubia/video/player/nubiaplayer/c;)Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lb/a/b/d/c;->d(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 26
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->j:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x0

    .line 28
    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/c;->w0(Lcn/nubia/video/player/nubiaplayer/c;Z)Z

    .line 29
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    const p2, 0x7f0900da

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->k:Landroid/widget/ImageView;

    .line 30
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->f:Landroid/view/View;

    const p2, 0x7f0900b2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->l:Landroid/widget/ImageView;

    .line 31
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->a:Landroid/view/View;

    const p2, 0x7f090111

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    .line 32
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->a:Landroid/view/View;

    const p2, 0x7f090112

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 33
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->a:Landroid/view/View;

    const p2, 0x7f090128

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/nubiaplayer/SliderBar;

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$p;->m:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    return-void
.end method
