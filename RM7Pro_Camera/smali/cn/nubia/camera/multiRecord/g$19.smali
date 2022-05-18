.class Lcn/nubia/camera/multiRecord/g$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/multiRecord/g;->g(Landroid/view/View;)V
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

    .line 516
    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 519
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/g;->D()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 520
    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 521
    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->a()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 522
    invoke-virtual {p1}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    .line 523
    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->q(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v0}, [Lcn/nubia/camera/multiRecord/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/multiRecord/a;

    iput-object v0, p1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    .line 527
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 528
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 529
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aput-object p1, v1, v3

    .line 530
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p1, v3}, Lcn/nubia/camera/multiRecord/m;->c(Z)V

    .line 532
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v2}, Lcn/nubia/camera/multiRecord/g;->r(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    .line 533
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    iget-object v1, p1, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {v1}, Lcn/nubia/camera/multiRecord/g;->s(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    .line 534
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g$19;->a:Lcn/nubia/camera/multiRecord/g;

    invoke-static {p1}, Lcn/nubia/camera/multiRecord/g;->b(Lcn/nubia/camera/multiRecord/g;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
