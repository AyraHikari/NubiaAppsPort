.class public abstract Lcom/a/a/b/d;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 3

    .line 304
    invoke-virtual {p0}, Lcom/a/a/b/d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    .line 305
    aput-object v1, p1, p2

    move p2, v2

    goto :goto_0

    :cond_0
    return p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method abstract b()Z
.end method

.method public abstract c()Lcom/a/a/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/m<",
            "TE;>;"
        }
    .end annotation
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract contains(Ljava/lang/Object;)Z
.end method

.method public d()Lcom/a/a/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/a/a/b/d;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 286
    new-instance v0, Lcom/a/a/b/j;

    invoke-virtual {p0}, Lcom/a/a/b/d;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/j;-><init>(Lcom/a/a/b/d;[Ljava/lang/Object;)V

    return-object v0

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/a/a/b/d;->c()Lcom/a/a/b/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/b/m;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/b/e;->a(Ljava/lang/Object;)Lcom/a/a/b/e;

    move-result-object v0

    return-object v0

    .line 282
    :cond_1
    invoke-static {}, Lcom/a/a/b/e;->e()Lcom/a/a/b/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/a/a/b/d;->c()Lcom/a/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 215
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/a/a/b/d;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/a/a/b/h;->a:[Ljava/lang/Object;

    return-object v0

    .line 170
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/a/a/b/d;->a([Ljava/lang/Object;I)I

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lcom/a/a/b/d;->size()I

    move-result v0

    .line 180
    array-length v1, p1

    if-ge v1, v0, :cond_0

    .line 181
    invoke-static {p1, v0}, Lcom/a/a/b/h;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_0
    array-length v1, p1

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    .line 183
    aput-object v1, p1, v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/a/a/b/d;->a([Ljava/lang/Object;I)I

    return-object p1
.end method
