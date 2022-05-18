.class public Lc/c/a/d/d/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lc/c/a/d/d/h;

.field private b:I

.field protected final c:Ljava/lang/String;

.field private final d:Ljava/lang/Object;

.field protected final e:Ljava/lang/reflect/Method;

.field protected final f:Ljava/lang/reflect/Method;

.field protected final g:Ljava/lang/reflect/Field;

.field protected final h:Lc/c/a/d/b/e;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/c/a/d/d/a;->b:I

    iput-object p2, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/d/b/f;->a(Ljava/lang/Class;)Lc/c/a/d/b/e;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/d/d/a;->h:Lc/c/a/d/b/e;

    invoke-static {p2}, Lc/c/a/d/d/b;->g(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc/c/a/d/d/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lc/c/a/d/d/b;->e(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lc/c/a/d/b/e;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lc/c/a/d/d/a;->d:Ljava/lang/Object;

    invoke-static {p1, p2}, Lc/c/a/d/d/b;->f(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/d/d/a;->e:Ljava/lang/reflect/Method;

    invoke-static {p1, p2}, Lc/c/a/d/d/b;->h(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/d/a;->f:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/d/b/e;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/d/a;->h:Lc/c/a/d/b/e;

    return-object v0
.end method

.method public b()Lc/c/a/d/c/a;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/d/a;->h:Lc/c/a/d/b/e;

    invoke-interface {v0}, Lc/c/a/d/b/e;->a()Lc/c/a/d/c/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/d/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lc/c/a/d/d/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/d/d/a;->h:Lc/c/a/d/b/e;

    invoke-interface {v0, p1}, Lc/c/a/d/b/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/d/a;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lc/c/a/d/d/a;->e:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v0, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lc/c/a/d/d/a;->b:I

    return v0
.end method

.method public i()Lc/c/a/d/d/h;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/d/a;->a:Lc/c/a/d/d/h;

    return-object v0
.end method

.method j(Lc/c/a/d/d/h;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/d/d/a;->a:Lc/c/a/d/d/h;

    return-void
.end method

.method public k(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 2

    iput p3, p0, Lc/c/a/d/d/a;->b:I

    iget-object v0, p0, Lc/c/a/d/d/a;->h:Lc/c/a/d/b/e;

    invoke-interface {v0, p2, p3}, Lc/c/a/d/b/e;->b(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p3, p0, Lc/c/a/d/d/a;->d:Ljava/lang/Object;

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lc/c/a/d/d/a;->f:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lc/c/a/d/d/a;->d:Ljava/lang/Object;

    :cond_1
    aput-object p2, v0, v1

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p3, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    if-nez p2, :cond_3

    iget-object p2, p0, Lc/c/a/d/d/a;->d:Ljava/lang/Object;

    :cond_3
    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
