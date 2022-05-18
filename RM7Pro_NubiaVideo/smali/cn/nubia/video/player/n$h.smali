.class Lcn/nubia/video/player/n$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ProgressBar;

.field public e:Landroid/widget/SeekBar;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/n;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f0900e2

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/n$h;->a:Landroid/view/View;

    .line 4
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f090028

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/player/n$h;->b:Landroid/widget/TextView;

    .line 5
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f0900e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcn/nubia/video/player/n$h;->d:Landroid/widget/ProgressBar;

    .line 6
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f0900a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    .line 7
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f09016f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcn/nubia/video/player/q;->j:Landroid/widget/ImageView;

    .line 8
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f090170

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcn/nubia/video/player/q;->k:Landroid/widget/ImageView;

    .line 9
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f09007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcn/nubia/video/player/q;->h:Landroid/widget/TextView;

    .line 10
    iget-object p2, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const v0, 0x7f0900a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    .line 11
    iget-object p2, p1, Lcn/nubia/video/player/q;->i:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    iget-object p2, p1, Lcn/nubia/video/player/q;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p1, Lcn/nubia/video/player/q;->b:Landroid/view/View;

    const p2, 0x7f0900df

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/n$h;->h:Landroid/view/View;

    const p2, 0x7f090111

    .line 14
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcn/nubia/video/player/n$h;->e:Landroid/widget/SeekBar;

    .line 15
    iget-object p1, p0, Lcn/nubia/video/player/n$h;->h:Landroid/view/View;

    const p2, 0x7f090052

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/player/n$h;->f:Landroid/widget/TextView;

    .line 16
    iget-object p1, p0, Lcn/nubia/video/player/n$h;->h:Landroid/view/View;

    const p2, 0x7f090065

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/player/n$h;->g:Landroid/widget/TextView;

    .line 17
    iget-object p1, p0, Lcn/nubia/video/player/n$h;->h:Landroid/view/View;

    const p2, 0x7f0900dd

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/video/player/n$h;->c:Landroid/widget/ImageView;

    return-void
.end method
