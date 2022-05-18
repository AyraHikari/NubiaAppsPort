.class public Lc/c/a/d/d/d;
.super Lc/c/a/d/d/a;
.source ""


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


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

    const-class p1, Lc/c/a/d/a/c;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lc/c/a/d/a/c;

    invoke-interface {p1}, Lc/c/a/d/a/c;->valueColumn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lc/c/a/d/d/d;->i:Ljava/lang/String;

    invoke-interface {p1}, Lc/c/a/d/a/c;->targetColumn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/d/d;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lc/c/a/d/c/a;
    .locals 1

    sget-object v0, Lc/c/a/d/c/a;->d:Lc/c/a/d/c/a;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public k(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .locals 2

    iget-object p2, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object v0, p0, Lc/c/a/d/d/d;->i:Ljava/lang/String;

    invoke-static {p3, v0}, Lc/c/a/d/d/i;->c(Ljava/lang/Class;Ljava/lang/String;)Lc/c/a/d/d/a;

    move-result-object p3

    invoke-virtual {p3, p1}, Lc/c/a/d/d/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-class v0, Lc/c/a/d/c/d;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lc/c/a/d/c/d;

    invoke-direct {p2, p0, p3}, Lc/c/a/d/c/d;-><init>(Lc/c/a/d/d/d;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-class v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :try_start_0
    new-instance p2, Lc/c/a/d/c/d;

    invoke-direct {p2, p0, p3}, Lc/c/a/d/c/d;-><init>(Lc/c/a/d/d/d;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lc/c/a/d/c/d;->a()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Lc/c/a/d/c/d;

    invoke-direct {p2, p0, p3}, Lc/c/a/d/c/d;-><init>(Lc/c/a/d/d/d;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lc/c/a/d/c/d;->b()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lc/c/a/e/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lc/c/a/d/d/a;->f:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p3, p0, Lc/c/a/d/d/a;->g:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
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

    iget-object v0, p0, Lc/c/a/d/d/d;->j:Ljava/lang/String;

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

    invoke-static {p0}, Lc/c/a/d/d/b;->i(Lc/c/a/d/d/d;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
