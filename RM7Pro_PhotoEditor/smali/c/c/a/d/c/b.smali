.class public Lc/c/a/d/c/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/c/b$a;,
        Lc/c/a/d/c/b$b;
    }
.end annotation


# direct methods
.method public static a(Landroid/database/Cursor;)Lc/c/a/d/d/c;
    .locals 5

    if-eqz p0, :cond_0

    new-instance v0, Lc/c/a/d/d/c;

    invoke-direct {v0}, Lc/c/a/d/d/c;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lc/c/a/d/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public static b(Lc/c/a/a;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/c/a/a;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p3, p4}, Lc/c/a/d/c/b$a;->c(J)V

    :try_start_0
    invoke-static {p0, p2}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object p0

    iget-object p3, p0, Lc/c/a/d/d/h;->c:Lc/c/a/d/d/f;

    invoke-virtual {p3}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lc/c/a/d/d/a;->h()I

    move-result v1

    if-gez v1, :cond_1

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :cond_1
    invoke-virtual {p3}, Lc/c/a/d/d/a;->a()Lc/c/a/d/b/e;

    move-result-object p4

    invoke-interface {p4, p1, v1}, Lc/c/a/d/b/e;->b(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p4}, Lc/c/a/d/c/b$a;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2, p1, v1}, Lc/c/a/d/d/a;->k(Ljava/lang/Object;Landroid/database/Cursor;I)V

    invoke-static {p2, p4, v2}, Lc/c/a/d/c/b$a;->b(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    if-ge p4, p2, :cond_3

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lc/c/a/d/d/h;->d:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/d/d/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2, p1, p4}, Lc/c/a/d/d/a;->k(Ljava/lang/Object;Landroid/database/Cursor;I)V

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lc/c/a/d/d/h;->e:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/d/d/d;

    invoke-virtual {p1, v2, v0, p3}, Lc/c/a/d/d/d;->k(Ljava/lang/Object;Landroid/database/Cursor;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-object v0
.end method
