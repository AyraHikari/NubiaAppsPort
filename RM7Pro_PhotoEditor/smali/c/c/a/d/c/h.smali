.class public Lc/c/a/d/c/h;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/c/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc/c/a/d/c/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object p0

    iget-object p1, p0, Lc/c/a/d/d/h;->c:Lc/c/a/d/d/f;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lc/c/a/d/d/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lc/c/a/d/d/f;->l()Z

    move-result v1

    const-string v2, "\"  "

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "INTEGER PRIMARY KEY AUTOINCREMENT,"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lc/c/a/d/d/a;->b()Lc/c/a/d/c/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " PRIMARY KEY,"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lc/c/a/d/d/h;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/d/d/a;

    instance-of v1, p1, Lc/c/a/d/d/d;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lc/c/a/d/d/a;->b()Lc/c/a/d/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lc/c/a/d/d/a;->c()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lc/c/a/d/d/b;->r(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " UNIQUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p1}, Lc/c/a/d/d/a;->c()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lc/c/a/d/d/b;->o(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {p1}, Lc/c/a/d/d/a;->c()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/d/b;->d(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, " CHECK("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p0, Lc/c/a/d/c/g;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/c/a/d/c/g;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lc/c/a/a;Ljava/lang/Object;)Lc/c/a/d/c/g;
    .locals 3

    new-instance v0, Lc/c/a/d/c/g;

    invoke-direct {v0}, Lc/c/a/d/c/g;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object p0

    iget-object v1, p0, Lc/c/a/d/d/h;->c:Lc/c/a/d/d/f;

    invoke-virtual {v1, p1}, Lc/c/a/d/d/f;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc/c/a/d/d/h;->b:Ljava/lang/String;

    invoke-static {p0}, Lc/c/a/d/c/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " WHERE "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    invoke-static {p0, v1, v2}, Lc/c/a/d/c/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/i;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc/c/a/d/c/g;->e(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p0, Lc/c/a/e/b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "this entity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]\'s id value is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/c/a/e/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Lc/c/a/a;Ljava/lang/Object;)Lc/c/a/d/c/g;
    .locals 4

    invoke-static {p0, p1}, Lc/c/a/d/c/h;->h(Lc/c/a/a;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lc/c/a/d/c/g;

    invoke-direct {v0}, Lc/c/a/d/c/g;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/d/i;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/d/d/g;

    iget-object v3, v2, Lc/c/a/d/d/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lc/c/a/d/d/g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lc/c/a/d/c/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p1, ") VALUES ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_2

    const-string v2, "?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc/c/a/d/c/g;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e(Lc/c/a/a;Ljava/lang/Object;)Lc/c/a/d/c/g;
    .locals 4

    invoke-static {p0, p1}, Lc/c/a/d/c/h;->h(Lc/c/a/a;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lc/c/a/d/c/g;

    invoke-direct {v0}, Lc/c/a/d/c/g;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/d/i;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/c/a/d/d/g;

    iget-object v3, v2, Lc/c/a/d/d/g;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lc/c/a/d/d/g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lc/c/a/d/c/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p1, ") VALUES ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_2

    const-string v2, "?,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lc/c/a/d/c/g;->e(Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs f(Lc/c/a/a;Ljava/lang/Object;[Ljava/lang/String;)Lc/c/a/d/c/g;
    .locals 5

    invoke-static {p0, p1}, Lc/c/a/d/c/h;->h(Lc/c/a/a;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-lez v1, :cond_1

    new-instance v2, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p2}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object p0

    iget-object p2, p0, Lc/c/a/d/d/h;->c:Lc/c/a/d/d/f;

    invoke-virtual {p2, p1}, Lc/c/a/d/d/f;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance p1, Lc/c/a/d/c/g;

    invoke-direct {p1}, Lc/c/a/d/c/g;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "UPDATE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lc/c/a/d/d/h;->b:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " SET "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/d/d/g;

    if-eqz v2, :cond_3

    iget-object v4, v0, Lc/c/a/d/d/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_3
    iget-object v4, v0, Lc/c/a/d/d/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lc/c/a/d/d/g;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lc/c/a/d/c/g;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p0, " WHERE "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object p0

    const-string p2, "="

    invoke-static {p0, p2, v1}, Lc/c/a/d/c/i;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/i;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lc/c/a/d/c/g;->e(Ljava/lang/String;)V

    return-object p1

    :cond_5
    new-instance p0, Lc/c/a/e/b;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "this entity["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]\'s id value is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/c/a/e/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static g(Ljava/lang/Object;Lc/c/a/d/d/a;)Lc/c/a/d/d/g;
    .locals 1

    invoke-virtual {p1}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lc/c/a/d/d/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lc/c/a/d/d/a;->f()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    new-instance p1, Lc/c/a/d/d/g;

    invoke-direct {p1, v0, p0}, Lc/c/a/d/d/g;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static h(Lc/c/a/a;Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lc/c/a/d/d/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lc/c/a/d/d/h;->a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;

    move-result-object p0

    iget-object v1, p0, Lc/c/a/d/d/h;->c:Lc/c/a/d/d/f;

    invoke-virtual {v1}, Lc/c/a/d/d/f;->l()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Lc/c/a/d/d/f;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lc/c/a/d/d/g;

    invoke-virtual {v1}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lc/c/a/d/d/g;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lc/c/a/d/d/h;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/d/d/a;

    instance-of v2, v1, Lc/c/a/d/d/d;

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lc/c/a/d/c/h;->g(Ljava/lang/Object;Lc/c/a/d/d/a;)Lc/c/a/d/d/g;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method
