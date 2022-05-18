.class Lcn/nubia/camera/multiRecord/g$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g;->h(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/multiRecord/g;


# direct methods
.method constructor <init>(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 594
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/g;->D()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    .line 595
    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->v(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 596
    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->i()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 599
    :cond_0
    sget p1, Lcn/nubia/camera/multiRecord/g;->b:I

    const/16 v0, 0x8

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 600
    sput v3, Lcn/nubia/camera/multiRecord/g;->b:I

    .line 601
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 602
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->d(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const v5, 0x7f080149

    invoke-virtual {p1, v5}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 603
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1, v4}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Z)Z

    .line 604
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->w(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v4}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 605
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->x(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    new-instance v1, Lcn/nubia/camera/af/b;

    .line 606
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/String;

    .line 607
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v2, v5, v6}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p1, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/b;)V

    .line 608
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/m;->a()V

    .line 609
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1, v3}, Lcn/nubia/camera/multiRecord/m;->a(Z)V

    .line 610
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 611
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->b(Lcn/nubia/camera/multiRecord/g;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 614
    :cond_1
    sput v4, Lcn/nubia/camera/multiRecord/g;->b:I

    .line 615
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->d(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/RotateImageView;

    move-result-object p1

    const v5, 0x7f08014a

    invoke-virtual {p1, v5}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 616
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1, v4}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Z)Z

    .line 617
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->y(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v4}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 618
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->z(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object p1

    new-instance v1, Lcn/nubia/camera/af/b;

    .line 619
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    .line 620
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 621
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/b/e;->n()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v6, v7}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/b;)V

    .line 622
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 623
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/m;->b()V

    .line 624
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1, v3}, Lcn/nubia/camera/multiRecord/m;->b(Z)V

    .line 625
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {p1, v1}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 626
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/g;->u(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    .line 627
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/g;->r(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    .line 628
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/g;->s(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    .line 629
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->c(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/SelectRectView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/multiRecord/SelectRectView;->setVisibility(I)V

    .line 631
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$3;->a:Lcn/nubia/camera/multiRecord/g;

    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    if-ne v0, v4, :cond_2

    const-string v0, "switch_photo"

    goto :goto_1

    :cond_2
    const-string v0, "switch_video"

    :goto_1
    invoke-static {p1, v0}, Lcn/nubia/camera/multiRecord/g;->b(Lcn/nubia/camera/multiRecord/g;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method
