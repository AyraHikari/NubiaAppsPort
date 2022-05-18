.class public abstract Landroid/support/v7/view/menu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/view/menu/m;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/Context;

.field protected c:Landroid/support/v7/view/menu/g;

.field protected d:Landroid/view/LayoutInflater;

.field private e:Landroid/support/v7/view/menu/m$a;

.field private f:I

.field protected g:Landroid/support/v7/view/menu/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v7/view/menu/b;->a:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/view/menu/b;->d:Landroid/view/LayoutInflater;

    .line 4
    iput p3, p0, Landroid/support/v7/view/menu/b;->f:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/view/menu/g;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->e:Landroid/support/v7/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/m$a;->a(Landroid/support/v7/view/menu/g;Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/v7/view/menu/s;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->e:Landroid/support/v7/view/menu/m$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/support/v7/view/menu/m$a;->b(Landroid/support/v7/view/menu/g;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected c(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public e(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/support/v7/view/menu/m$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/b;->e:Landroid/support/v7/view/menu/m$a;

    return-void
.end method

.method public g(Landroid/content/Context;Landroid/support/v7/view/menu/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/view/menu/b;->b:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 3
    iput-object p2, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    return-void
.end method

.method public abstract h(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/n$a;)V
.end method

.method public i(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/n$a;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->d:Landroid/view/LayoutInflater;

    iget v1, p0, Landroid/support/v7/view/menu/b;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/view/menu/n$a;

    return-object p1
.end method

.method public j(Landroid/support/v7/view/menu/g;Landroid/support/v7/view/menu/h;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public k(Z)V
    .locals 9

    .line 1
    iget-object p1, p0, Landroid/support/v7/view/menu/b;->g:Landroid/support/v7/view/menu/n;

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->q()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->c:Landroid/support/v7/view/menu/g;

    invoke-virtual {v0}, Landroid/support/v7/view/menu/g;->A()Ljava/util/ArrayList;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_5

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/view/menu/h;

    .line 7
    invoke-virtual {p0, v4, v5}, Landroid/support/v7/view/menu/b;->o(ILandroid/support/v7/view/menu/h;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 9
    instance-of v7, v6, Landroid/support/v7/view/menu/n$a;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Landroid/support/v7/view/menu/n$a;

    .line 10
    invoke-interface {v7}, Landroid/support/v7/view/menu/n$a;->getItemData()Landroid/support/v7/view/menu/h;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    .line 11
    :goto_1
    invoke-virtual {p0, v5, v6, p1}, Landroid/support/v7/view/menu/b;->n(Landroid/support/v7/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eq v5, v7, :cond_2

    .line 12
    invoke-virtual {v8, v1}, Landroid/view/View;->setPressed(Z)V

    .line 13
    invoke-virtual {v8}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v8, v6, :cond_3

    .line 14
    invoke-virtual {p0, v8, v4}, Landroid/support/v7/view/menu/b;->c(Landroid/view/View;I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v1, v4

    .line 15
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 16
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/view/menu/b;->l(Landroid/view/ViewGroup;I)Z

    move-result v0

    if-nez v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected l(Landroid/view/ViewGroup;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public m()Landroid/support/v7/view/menu/m$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/view/menu/b;->e:Landroid/support/v7/view/menu/m$a;

    return-object v0
.end method

.method public n(Landroid/support/v7/view/menu/h;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    instance-of v0, p2, Landroid/support/v7/view/menu/n$a;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Landroid/support/v7/view/menu/n$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Landroid/support/v7/view/menu/b;->i(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/n$a;

    move-result-object p2

    .line 4
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/b;->h(Landroid/support/v7/view/menu/h;Landroid/support/v7/view/menu/n$a;)V

    .line 5
    check-cast p2, Landroid/view/View;

    return-object p2
.end method

.method public abstract o(ILandroid/support/v7/view/menu/h;)Z
.end method
