.class Landroid/support/v7/widget/Toolbar$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field a:Landroid/support/v7/view/menu/g;

.field b:Landroid/support/v7/view/menu/h;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/support/v7/view/menu/s;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    instance-of v0, p1, La/b/d/d/b;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, La/b/d/d/b;

    invoke-interface {p1}, La/b/d/d/b;->c()V

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->a()V

    .line 7
    iput-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/h;->p(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public g(Landroid/content/Context;Landroid/support/v7/view/menu/g;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->a:Landroid/support/v7/view/menu/g;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/g;->e(Landroid/support/v7/view/menu/h;)Z

    .line 3
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$d;->a:Landroid/support/v7/view/menu/g;

    return-void
.end method

.method public j(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->e()V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_1

    .line 4
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 5
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->h:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Landroid/support/v7/view/menu/h;->getActionView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    .line 8
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    .line 9
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 10
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    if-eq p1, v0, :cond_3

    .line 11
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 12
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 13
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->k()Landroid/support/v7/widget/Toolbar$e;

    move-result-object p1

    const v0, 0x800003

    .line 14
    iget-object v1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget v2, v1, Landroid/support/v7/widget/Toolbar;->n:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v0, v2

    iput v0, p1, Landroid/support/v7/app/a;->a:I

    const/4 v0, 0x2

    .line 15
    iput v0, p1, Landroid/support/v7/widget/Toolbar$e;->b:I

    .line 16
    iget-object v0, v1, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p1, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->A()V

    .line 19
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 p1, 0x1

    .line 20
    invoke-virtual {p2, p1}, Landroid/support/v7/view/menu/h;->p(Z)V

    .line 21
    iget-object p2, p0, Landroid/support/v7/widget/Toolbar$d;->c:Landroid/support/v7/widget/Toolbar;

    iget-object p2, p2, Landroid/support/v7/widget/Toolbar;->i:Landroid/view/View;

    instance-of v0, p2, La/b/d/d/b;

    if-eqz v0, :cond_4

    .line 22
    check-cast p2, La/b/d/d/b;

    invoke-interface {p2}, La/b/d/d/b;->b()V

    :cond_4
    return p1
.end method

.method public k(Z)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->a:Landroid/support/v7/view/menu/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/support/v7/view/menu/g;->size()I

    move-result p1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/Toolbar$d;->a:Landroid/support/v7/view/menu/g;

    invoke-virtual {v2, v1}, Landroid/support/v7/view/menu/g;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 5
    iget-object v3, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar$d;->a:Landroid/support/v7/view/menu/g;

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar$d;->b:Landroid/support/v7/view/menu/h;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/Toolbar$d;->e(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z

    :cond_2
    return-void
.end method
