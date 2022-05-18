.class public Lcn/nubia/collage/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcn/nubia/collage/f;

.field private b:Lcn/nubia/collage/g;


# direct methods
.method public constructor <init>(Lcn/nubia/collage/g;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    new-instance p1, Lcn/nubia/collage/h;

    invoke-direct {p1, p2}, Lcn/nubia/collage/h;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    new-instance p2, Lcn/nubia/collage/i$a;

    invoke-direct {p2, p0}, Lcn/nubia/collage/i$a;-><init>(Lcn/nubia/collage/i;)V

    invoke-interface {p1, p2}, Lcn/nubia/collage/f;->v(Lcn/nubia/collage/o/b/i;)V

    iget-object p1, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    new-instance p2, Lcn/nubia/collage/i$b;

    invoke-direct {p2, p0}, Lcn/nubia/collage/i$b;-><init>(Lcn/nubia/collage/i;)V

    invoke-interface {p1, p2}, Lcn/nubia/collage/f;->t(Lcn/nubia/collage/o/b/d;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/i;)Lcn/nubia/collage/g;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/collage/i;)Lcn/nubia/collage/f;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    iput-object v0, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-static {}, Lcn/nubia/collage/n/f;->k()Lcn/nubia/collage/n/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/collage/n/f;->g()V

    return-void
.end method

.method public d(II)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1, p2}, Lcn/nubia/collage/f;->w(II)V

    iget-object p1, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {p1}, Lcn/nubia/collage/g;->c()V

    return-void
.end method

.method public e()Lcn/nubia/collage/c;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0}, Lcn/nubia/collage/f;->n()Lcn/nubia/collage/c;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0}, Lcn/nubia/collage/f;->a()I

    move-result v0

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0}, Lcn/nubia/collage/f;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1}, Lcn/nubia/collage/f;->g(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1}, Lcn/nubia/collage/f;->j(I)V

    iget-object p1, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {p1}, Lcn/nubia/collage/g;->c()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0}, Lcn/nubia/collage/f;->pause()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0}, Lcn/nubia/collage/f;->s()V

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1}, Lcn/nubia/collage/f;->l(I)V

    iget-object p1, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {p1}, Lcn/nubia/collage/g;->c()V

    return-void
.end method

.method public m(Lcn/nubia/collage/k$b;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1}, Lcn/nubia/collage/f;->o(Lcn/nubia/collage/k$b;)V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0}, Lcn/nubia/collage/f;->i()V

    iget-object v0, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {v0}, Lcn/nubia/collage/g;->c()V

    return-void
.end method

.method public o(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1, p2}, Lcn/nubia/collage/f;->d(ILjava/lang/String;)V

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1}, Lcn/nubia/collage/f;->u(Ljava/util/List;)V

    new-instance v0, Lcn/nubia/collage/i$c;

    invoke-direct {v0, p0}, Lcn/nubia/collage/i$c;-><init>(Lcn/nubia/collage/i;)V

    invoke-static {p1, v0}, Lcn/nubia/collage/o/a/j;->m(Ljava/util/List;Lcn/nubia/collage/o/a/j$c;)V

    return-void
.end method

.method public q(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1, p2}, Lcn/nubia/collage/f;->e(ILjava/lang/String;)V

    iget-object p1, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {p1}, Lcn/nubia/collage/g;->c()V

    return-void
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0}, Lcn/nubia/collage/f;->m()V

    iget-object v0, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {v0}, Lcn/nubia/collage/g;->c()V

    return-void
.end method

.method public s(II)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1, p2}, Lcn/nubia/collage/f;->p(II)V

    iget-object p1, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {p1}, Lcn/nubia/collage/g;->c()V

    return-void
.end method

.method public t(I)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {v0}, Lcn/nubia/collage/g;->a()V

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1}, Lcn/nubia/collage/f;->q(I)V

    return-void
.end method

.method public u(I)V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {v0}, Lcn/nubia/collage/g;->a()V

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0, p1}, Lcn/nubia/collage/f;->c(I)V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/i;->a:Lcn/nubia/collage/f;

    invoke-interface {v0}, Lcn/nubia/collage/f;->r()V

    iget-object v0, p0, Lcn/nubia/collage/i;->b:Lcn/nubia/collage/g;

    invoke-interface {v0}, Lcn/nubia/collage/g;->c()V

    return-void
.end method
