.class Lcn/nubia/video/player/k$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/ProgressBar;

.field public g:Landroid/widget/ImageView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/widget/ImageView;

.field public j:Landroid/widget/SeekBar;

.field public k:Landroid/widget/TextView;

.field public l:Landroid/widget/TextView;

.field public m:Landroid/view/View;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/k;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f0900e2

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->a:Landroid/view/View;

    .line 4
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f090028

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->b:Landroid/widget/TextView;

    .line 5
    iget-object p2, p0, Lcn/nubia/video/player/k$m;->a:Landroid/view/View;

    const v0, 0x7f0900b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->i:Landroid/widget/ImageView;

    .line 6
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f0900e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->f:Landroid/widget/ProgressBar;

    .line 7
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f0900a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    .line 8
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f09016f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcn/nubia/video/player/q;->j:Landroid/widget/ImageView;

    .line 9
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f090170

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcn/nubia/video/player/q;->k:Landroid/widget/ImageView;

    .line 10
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f09007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcn/nubia/video/player/q;->h:Landroid/widget/TextView;

    .line 11
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f0900a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    .line 12
    iget-object p2, p1, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p2, p1, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v1, 0x7f0900df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const v1, 0x7f0900dc

    .line 15
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->o:Landroid/view/View;

    .line 16
    iget-object p2, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const v1, 0x7f0900dd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->c:Landroid/widget/ImageView;

    .line 17
    iget-object p2, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const v1, 0x7f0900bd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->d:Landroid/widget/ImageView;

    .line 18
    iget-object p2, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const v1, 0x7f0900e3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcn/nubia/video/player/k$m;->e:Landroid/widget/ImageView;

    .line 19
    iget-object p1, p1, Lcn/nubia/video/player/q;->a:Landroid/app/Activity;

    invoke-static {p1}, Lb/a/b/d/c;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 20
    iget-object p1, p0, Lcn/nubia/video/player/k$m;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcn/nubia/video/player/k$m;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const p2, 0x7f0900da

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/video/player/k$m;->g:Landroid/widget/ImageView;

    .line 23
    iget-object p1, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const p2, 0x7f0900b2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/video/player/k$m;->h:Landroid/widget/ImageView;

    .line 24
    iget-object p1, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const p2, 0x7f090111

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcn/nubia/video/player/k$m;->j:Landroid/widget/SeekBar;

    .line 25
    iget-object p1, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const p2, 0x7f090052

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/player/k$m;->k:Landroid/widget/TextView;

    .line 26
    iget-object p1, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const p2, 0x7f090065

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/player/k$m;->l:Landroid/widget/TextView;

    .line 27
    iget-object p1, p0, Lcn/nubia/video/player/k$m;->n:Landroid/view/View;

    const p2, 0x7f0900a8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/k$m;->m:Landroid/view/View;

    return-void
.end method
