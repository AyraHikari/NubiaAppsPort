.class Lc/e/c/c;
.super Lc/e/c/m;
.source ""


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lc/e/c/b;

    invoke-direct {v0}, Lc/e/c/b;-><init>()V

    invoke-direct {p0, p1, v0}, Lc/e/c/m;-><init>(Ljava/lang/String;Lc/e/c/f;)V

    return-void
.end method


# virtual methods
.method protected f(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "lefttop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "top"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "righttop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rightbottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "leftbottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "implementation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast p1, Lc/e/c/b;

    invoke-virtual {p1}, Lc/e/c/b;->k()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "error"

    return-object p1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lc/e/c/m;->i(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method protected h()V
    .locals 2

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {v0}, Lc/e/c/b;->k()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {v0}, Lc/e/c/b;->k()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ninepatch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->u(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->r(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lc/e/c/m;->a:Lc/e/c/f;

    check-cast v0, Lc/e/c/b;

    invoke-virtual {p0}, Lc/e/c/m;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/c/b;->o(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
