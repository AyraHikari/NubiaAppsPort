.class public Lc/b/a/c;
.super Lc/b/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/e<",
        "TModelType;",
        "Lc/b/a/n/j/g;",
        "Lc/b/a/n/k/i/a;",
        "Lc/b/a/n/k/f/b;",
        ">;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lc/b/a/q/f;Lc/b/a/g;Lc/b/a/o/m;Lc/b/a/o/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lc/b/a/q/f<",
            "TModelType;",
            "Lc/b/a/n/j/g;",
            "Lc/b/a/n/k/i/a;",
            "Lc/b/a/n/k/f/b;",
            ">;",
            "Lc/b/a/g;",
            "Lc/b/a/o/m;",
            "Lc/b/a/o/g;",
            ")V"
        }
    .end annotation

    .line 1
    const-class v4, Lc/b/a/n/k/f/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lc/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lc/b/a/q/f;Ljava/lang/Class;Lc/b/a/g;Lc/b/a/o/m;Lc/b/a/o/g;)V

    .line 2
    invoke-virtual {p0}, Lc/b/a/c;->x()Lc/b/a/c;

    return-void
.end method


# virtual methods
.method public A(I)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->i(I)Lc/b/a/e;

    return-object p0
.end method

.method public B()Lc/b/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lc/b/a/n/g;

    .line 1
    iget-object v1, p0, Lc/b/a/e;->c:Lc/b/a/g;

    invoke-virtual {v1}, Lc/b/a/g;->o()Lc/b/a/n/k/i/f;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lc/b/a/c;->I([Lc/b/a/n/g;)Lc/b/a/c;

    return-object p0
.end method

.method public C(Lc/b/a/r/d;)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/r/d<",
            "-TModelType;",
            "Lc/b/a/n/k/f/b;",
            ">;)",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->m(Lc/b/a/r/d;)Lc/b/a/e;

    return-object p0
.end method

.method public D(Ljava/lang/Object;)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->n(Ljava/lang/Object;)Lc/b/a/e;

    return-object p0
.end method

.method public E(II)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lc/b/a/e;->p(II)Lc/b/a/e;

    return-object p0
.end method

.method public F(I)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->q(I)Lc/b/a/e;

    return-object p0
.end method

.method public G(Lc/b/a/n/c;)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            ")",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->r(Lc/b/a/n/c;)Lc/b/a/e;

    return-object p0
.end method

.method public H(Z)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->s(Z)Lc/b/a/e;

    return-object p0
.end method

.method public varargs I([Lc/b/a/n/g;)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lc/b/a/n/g<",
            "Lc/b/a/n/k/i/a;",
            ">;)",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->u([Lc/b/a/n/g;)Lc/b/a/e;

    return-object p0
.end method

.method b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/b/a/c;->v()Lc/b/a/c;

    return-void
.end method

.method c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/b/a/c;->B()Lc/b/a/c;

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c;->w()Lc/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f()Lc/b/a/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c;->w()Lc/b/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g(Lc/b/a/n/e;)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/c;->y(Lc/b/a/n/e;)Lc/b/a/c;

    return-object p0
.end method

.method public bridge synthetic h(Lc/b/a/n/i/b;)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/c;->z(Lc/b/a/n/i/b;)Lc/b/a/c;

    return-object p0
.end method

.method public bridge synthetic p(II)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lc/b/a/c;->E(II)Lc/b/a/c;

    return-object p0
.end method

.method public bridge synthetic r(Lc/b/a/n/c;)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/c;->G(Lc/b/a/n/c;)Lc/b/a/c;

    return-object p0
.end method

.method public bridge synthetic s(Z)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/c;->H(Z)Lc/b/a/c;

    return-object p0
.end method

.method public bridge synthetic u([Lc/b/a/n/g;)Lc/b/a/e;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/c;->I([Lc/b/a/n/g;)Lc/b/a/c;

    return-object p0
.end method

.method public v()Lc/b/a/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lc/b/a/n/g;

    .line 1
    iget-object v1, p0, Lc/b/a/e;->c:Lc/b/a/g;

    invoke-virtual {v1}, Lc/b/a/g;->n()Lc/b/a/n/k/i/f;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lc/b/a/c;->I([Lc/b/a/n/g;)Lc/b/a/c;

    return-object p0
.end method

.method public w()Lc/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lc/b/a/e;->f()Lc/b/a/e;

    move-result-object v0

    check-cast v0, Lc/b/a/c;

    return-object v0
.end method

.method public final x()Lc/b/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/r/g/a;

    invoke-direct {v0}, Lc/b/a/r/g/a;-><init>()V

    invoke-super {p0, v0}, Lc/b/a/e;->a(Lc/b/a/r/g/d;)Lc/b/a/e;

    return-object p0
.end method

.method public y(Lc/b/a/n/e;)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "Lc/b/a/n/j/g;",
            "Lc/b/a/n/k/i/a;",
            ">;)",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->g(Lc/b/a/n/e;)Lc/b/a/e;

    return-object p0
.end method

.method public z(Lc/b/a/n/i/b;)Lc/b/a/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/b;",
            ")",
            "Lc/b/a/c<",
            "TModelType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lc/b/a/e;->h(Lc/b/a/n/i/b;)Lc/b/a/e;

    return-object p0
.end method
