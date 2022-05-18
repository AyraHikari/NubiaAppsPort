.class public Lc/c/a/g/b;
.super Lc/c/a/g/a;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/i;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lc/c/a/e/a;

.field private d:Lc/c/a/e/a;


# direct methods
.method private f(Lc/c/a/e/a;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lc/c/a/g/b;->h()V

    .line 2
    iget-object v0, p0, Lc/c/a/g/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lc/c/a/g/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lc/c/a/g/b;->b:Ljava/util/List;

    new-instance v3, Lc/c/a/e/i;

    invoke-virtual {p1}, Lc/c/a/e/a;->h()I

    move-result v4

    invoke-virtual {p1}, Lc/c/a/e/a;->c()I

    move-result v5

    invoke-direct {v3, v4, v5, v0}, Lc/c/a/e/i;-><init>(IIZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/g/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/e/i;

    .line 2
    invoke-virtual {v1}, Lc/c/a/e/a;->n()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/g/a;->a()V

    .line 2
    invoke-direct {p0}, Lc/c/a/g/b;->h()V

    return-void
.end method

.method public g(Lc/c/a/e/a;Lc/c/a/e/c;)Lc/c/a/e/a;
    .locals 10

    .line 1
    iget-object v0, p0, Lc/c/a/g/b;->d:Lc/c/a/e/a;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lc/c/a/g/b;->c:Lc/c/a/e/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iput-object p1, p0, Lc/c/a/g/b;->d:Lc/c/a/e/a;

    .line 3
    invoke-direct {p0, p1}, Lc/c/a/g/b;->f(Lc/c/a/e/a;)V

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lc/c/a/g/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    move-object v3, p1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object p1, p0, Lc/c/a/g/b;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/i;

    .line 6
    iget-object v2, p0, Lc/c/a/g/b;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lc/c/a/g/c;

    .line 7
    invoke-interface {p2, p1}, Lc/c/a/e/c;->e(Lc/c/a/e/i;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v3}, Lc/c/a/e/a;->h()I

    move-result v6

    invoke-virtual {v3}, Lc/c/a/e/a;->c()I

    move-result v7

    const/4 v9, 0x0

    move-object v2, p2

    invoke-interface/range {v2 .. v9}, Lc/c/a/e/c;->l(Lc/c/a/e/a;IIIILc/c/a/g/c;Lc/c/a/e/c$a;)V

    .line 9
    invoke-interface {p2}, Lc/c/a/e/c;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iput-object v3, p0, Lc/c/a/g/b;->c:Lc/c/a/e/a;

    return-object v3
.end method
