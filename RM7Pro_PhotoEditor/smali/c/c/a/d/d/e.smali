.class public Lc/c/a/d/d/e;
.super Lc/c/a/d/d/a;
.source ""


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:Lc/c/a/d/b/e;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lc/c/a/d/d/a;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-static {p2}, Lc/c/a/d/d/b;->j(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/d/e;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lc/c/a/d/d/e;->m()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, p1}, Lc/c/a/d/d/i;->c(Ljava/lang/Class;Ljava/lang/String;)Lc/c/a/d/d/a;

    move-result-object p1

    iget-object p1, p1, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/b/f;->a(Ljava/lang/Class;)Lc/c/a/d/b/e;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/d/e;->j:Lc/c/a/d/b/e;

    return-void
.end method


# virtual methods
.method public b()Lc/c/a/d/c/a;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/d/e;->j:Lc/c/a/d/b/e;

    invoke-interface {v0}, Lc/c/a/d/b/e;->a()Lc/c/a/d/c/a;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p1}, Lc/c/a/d/d/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lc/c/a/d/c/e;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Lc/c/a/d/c/e;

    invoke-virtual {p1}, Lc/c/a/d/c/e;->b()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    const-class v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    invoke-static {p0}, Lc/c/a/d/d/b;->k(Lc/c/a/d/d/e;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/d/d/e;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/c/a/d/d/i;->c(Ljava/lang/Class;Ljava/lang/String;)Lc/c/a/d/d/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc/c/a/d/d/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lc/c/a/d/d/a;->i()Lc/c/a/d/d/h;

    move-result-object v3

    if-eqz v3, :cond_2

    instance-of v4, v1, Lc/c/a/d/d/f;

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lc/c/a/d/d/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, v3, Lc/c/a/d/d/h;->a:Lc/c/a/a;

    invoke-virtual {v6, v5}, Lc/c/a/a;->t(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lc/c/a/d/d/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lc/c/a/d/d/e;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lc/c/a/d/d/i;->c(Ljava/lang/Class;Ljava/lang/String;)Lc/c/a/d/d/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc/c/a/d/d/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lc/c/a/d/d/a;->i()Lc/c/a/d/d/h;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    instance-of v3, v1, Lc/c/a/d/d/f;

    if-eqz v3, :cond_4

    iget-object v2, v2, Lc/c/a/d/d/h;->a:Lc/c/a/a;

    invoke-virtual {v2, p1}, Lc/c/a/a;->t(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v1, p1}, Lc/c/a/d/d/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 2

    iget-object v0, p0, Lc/c/a/d/d/e;->j:Lc/c/a/d/b/e;

    invoke-interface {v0, p2, p3}, Lc/c/a/d/b/e;->b(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    iget-object v0, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc/c/a/d/c/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p3, Lc/c/a/d/c/e;

    invoke-direct {p3, p0, p2}, Lc/c/a/d/c/e;-><init>(Lc/c/a/d/d/e;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-class v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lc/c/a/d/c/e;

    invoke-direct {v0, p0, p2}, Lc/c/a/d/c/e;-><init>(Lc/c/a/d/d/e;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lc/c/a/d/c/e;->a()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_2
    new-instance v0, Lc/c/a/d/c/e;

    invoke-direct {v0, p0, p2}, Lc/c/a/d/c/e;-><init>(Lc/c/a/d/d/e;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lc/c/a/d/c/e;->c()Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p2, p0, Lc/c/a/d/d/a;->f:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p2, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/d/e;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lc/c/a/d/d/b;->k(Lc/c/a/d/d/e;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
