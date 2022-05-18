.class public Lc/b/a/t/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Y:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TT;TY;>;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lc/b/a/t/e;->a:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc/b/a/t/e;->c:I

    .line 4
    iput p1, p0, Lc/b/a/t/e;->b:I

    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/t/e;->b:I

    invoke-virtual {p0, v0}, Lc/b/a/t/e;->m(I)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lc/b/a/t/e;->m(I)V

    return-void
.end method

.method public g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/t/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/t/e;->c:I

    return v0
.end method

.method protected i(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    return-void
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lc/b/a/t/e;->i(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget v1, p0, Lc/b/a/t/e;->b:I

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/b/a/t/e;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lc/b/a/t/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 5
    iget v0, p0, Lc/b/a/t/e;->c:I

    invoke-virtual {p0, p2}, Lc/b/a/t/e;->i(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr v0, p2

    iput v0, p0, Lc/b/a/t/e;->c:I

    :cond_1
    if-eqz p1, :cond_2

    .line 6
    iget p2, p0, Lc/b/a/t/e;->c:I

    invoke-virtual {p0, p1}, Lc/b/a/t/e;->i(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lc/b/a/t/e;->c:I

    .line 7
    :cond_2
    invoke-direct {p0}, Lc/b/a/t/e;->f()V

    return-object p1
.end method

.method public l(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/t/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Lc/b/a/t/e;->c:I

    invoke-virtual {p0, p1}, Lc/b/a/t/e;->i(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lc/b/a/t/e;->c:I

    :cond_0
    return-object p1
.end method

.method protected m(I)V
    .locals 4

    .line 1
    :goto_0
    iget v0, p0, Lc/b/a/t/e;->c:I

    if-le v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/t/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4
    iget v2, p0, Lc/b/a/t/e;->c:I

    invoke-virtual {p0, v1}, Lc/b/a/t/e;->i(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lc/b/a/t/e;->c:I

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lc/b/a/t/e;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v0, v1}, Lc/b/a/t/e;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
