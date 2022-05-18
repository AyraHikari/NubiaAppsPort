.class public abstract Lcom/a/a/b/e;
.super Lcom/a/a/b/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/a/b/d<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 313
    invoke-direct {p0}, Lcom/a/a/b/d;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/a/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/a/a/b/l;

    invoke-direct {v0, p0}, Lcom/a/a/b/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/a/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 234
    instance-of v0, p0, Lcom/a/a/b/d;

    if-eqz v0, :cond_1

    .line 236
    check-cast p0, Lcom/a/a/b/d;

    invoke-virtual {p0}, Lcom/a/a/b/d;->d()Lcom/a/a/b/e;

    move-result-object p0

    .line 237
    invoke-virtual {p0}, Lcom/a/a/b/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/a/b/e;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/b/e;->a([Ljava/lang/Object;)Lcom/a/a/b/e;

    move-result-object p0

    :cond_0
    return-object p0

    .line 239
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/b/e;->b([Ljava/lang/Object;)Lcom/a/a/b/e;

    move-result-object p0

    return-object p0
.end method

.method static a([Ljava/lang/Object;)Lcom/a/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 290
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/a/a/b/e;->b([Ljava/lang/Object;I)Lcom/a/a/b/e;

    move-result-object p0

    return-object p0
.end method

.method private static varargs b([Ljava/lang/Object;)Lcom/a/a/b/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 281
    invoke-static {p0}, Lcom/a/a/b/h;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/a/a/b/e;->a([Ljava/lang/Object;)Lcom/a/a/b/e;

    move-result-object p0

    return-object p0
.end method

.method static b([Ljava/lang/Object;I)Lcom/a/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 306
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 307
    invoke-static {p0, p1}, Lcom/a/a/b/h;->b([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 309
    :cond_0
    new-instance p1, Lcom/a/a/b/k;

    invoke-direct {p1, p0}, Lcom/a/a/b/k;-><init>([Ljava/lang/Object;)V

    return-object p1

    .line 303
    :cond_1
    new-instance p1, Lcom/a/a/b/l;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-direct {p1, p0}, Lcom/a/a/b/l;-><init>(Ljava/lang/Object;)V

    return-object p1

    .line 300
    :cond_2
    invoke-static {}, Lcom/a/a/b/e;->e()Lcom/a/a/b/e;

    move-result-object p0

    return-object p0
.end method

.method public static e()Lcom/a/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 63
    sget-object v0, Lcom/a/a/b/k;->a:Lcom/a/a/b/e;

    return-object v0
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 4

    .line 482
    invoke-virtual {p0}, Lcom/a/a/b/e;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 484
    invoke-virtual {p0, v1}, Lcom/a/a/b/e;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public a(II)Lcom/a/a/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 362
    invoke-virtual {p0}, Lcom/a/a/b/e;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/a/a/a/c;->a(III)V

    sub-int v0, p2, p1

    .line 364
    invoke-virtual {p0}, Lcom/a/a/b/e;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 373
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/e;->b(II)Lcom/a/a/b/e;

    move-result-object p1

    return-object p1

    .line 371
    :cond_1
    invoke-virtual {p0, p1}, Lcom/a/a/b/e;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/a/a/b/e;->a(Ljava/lang/Object;)Lcom/a/a/b/e;

    move-result-object p1

    return-object p1

    .line 369
    :cond_2
    invoke-static {}, Lcom/a/a/b/e;->e()Lcom/a/a/b/e;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcom/a/a/b/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/a/a/b/n<",
            "TE;>;"
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/a/a/b/e$1;

    invoke-virtual {p0}, Lcom/a/a/b/e;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/a/a/b/e$1;-><init>(Lcom/a/a/b/e;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method b(II)Lcom/a/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    .line 383
    new-instance v0, Lcom/a/a/b/e$a;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/b/e$a;-><init>(Lcom/a/a/b/e;II)V

    return-object v0
.end method

.method public c()Lcom/a/a/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/m<",
            "TE;>;"
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Lcom/a/a/b/e;->f()Lcom/a/a/b/n;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 349
    invoke-virtual {p0, p1}, Lcom/a/a/b/e;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d()Lcom/a/a/b/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/e<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 563
    invoke-static {p0, p1}, Lcom/a/a/b/g;->a(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Lcom/a/a/b/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/b/n<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 324
    invoke-virtual {p0, v0}, Lcom/a/a/b/e;->a(I)Lcom/a/a/b/n;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 569
    invoke-virtual {p0}, Lcom/a/a/b/e;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 571
    invoke-virtual {p0, v2}, Lcom/a/a/b/e;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-static {p0, p1}, Lcom/a/a/b/g;->b(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/a/a/b/e;->c()Lcom/a/a/b/m;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {p0, p1}, Lcom/a/a/b/g;->c(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/a/a/b/e;->f()Lcom/a/a/b/n;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/a/a/b/e;->a(I)Lcom/a/a/b/n;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/a/a/b/e;->a(II)Lcom/a/a/b/e;

    move-result-object p1

    return-object p1
.end method
