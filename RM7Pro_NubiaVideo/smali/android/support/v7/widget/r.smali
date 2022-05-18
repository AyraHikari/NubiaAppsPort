.class Landroid/support/v7/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/r$b;,
        Landroid/support/v7/widget/r$a;
    }
.end annotation


# instance fields
.field final a:Landroid/support/v7/widget/r$b;

.field final b:Landroid/support/v7/widget/r$a;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v7/widget/r$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    .line 3
    new-instance p1, Landroid/support/v7/widget/r$a;

    invoke-direct {p1}, Landroid/support/v7/widget/r$a;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    return-void
.end method

.method private h(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v1}, Landroid/support/v7/widget/r$b;->i()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    .line 2
    iget-object v3, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/r$a;->b(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    .line 3
    :goto_1
    iget-object p1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/r$a;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method a(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    .line 1
    iget-object p2, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {p2}, Landroid/support/v7/widget/r$b;->i()I

    move-result p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/r;->h(I)I

    move-result p2

    .line 3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/r$b;->g(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/r$a;->e(IZ)V

    if-eqz p3, :cond_1

    .line 5
    iget-object p2, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method b(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/r;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method c(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    if-gez p2, :cond_0

    .line 1
    iget-object p2, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {p2}, Landroid/support/v7/widget/r$b;->i()I

    move-result p2

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Landroid/support/v7/widget/r;->h(I)I

    move-result p2

    .line 3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/widget/r$b;->f(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p3, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {p3, p2, p4}, Landroid/support/v7/widget/r$a;->e(IZ)V

    if-eqz p4, :cond_1

    .line 5
    iget-object p2, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method d(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/r;->h(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/r$b;->e(I)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r$a;->f(I)Z

    return-void
.end method

.method e(II)Landroid/view/View;
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    iget-object v3, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v3, v2}, Landroid/support/v7/widget/r$b;->d(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$z;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->n()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->s()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$z;->m()I

    move-result v3

    if-ne v3, p2, :cond_1

    :cond_0
    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method f(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/r;->h(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/r$b;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method g()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0}, Landroid/support/v7/widget/r$b;->i()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method i(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/r$b;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0}, Landroid/support/v7/widget/r$b;->i()I

    move-result v0

    return v0
.end method

.method k(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/r$b;->h(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/r$a;->h(I)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not a child, cannot hide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method l(Landroid/view/View;)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/r$b;->h(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/r$a;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r$a;->b(I)I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method m(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method n()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0}, Landroid/support/v7/widget/r$b;->c()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/r$a;->g()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method o(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/r$b;->h(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v1, v0}, Landroid/support/v7/widget/r$b;->b(I)V

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/r$a;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method p(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/r;->h(I)I

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/r$b;->a(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/r$b;->b(I)V

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/r$a;->f(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method q(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/r$b;->h(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r$a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/r$a;->f(I)Z

    .line 5
    iget-object v2, p0, Landroid/support/v7/widget/r;->a:Landroid/support/v7/widget/r$b;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/r$b;->b(I)V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/support/v7/widget/r;->b:Landroid/support/v7/widget/r$a;

    invoke-virtual {v1}, Landroid/support/v7/widget/r$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/r;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
