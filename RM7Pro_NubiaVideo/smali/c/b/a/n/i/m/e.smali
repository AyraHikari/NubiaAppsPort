.class Lc/b/a/n/i/m/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/i/m/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Lc/b/a/n/i/m/h;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/i/m/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/i/m/e$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lc/b/a/n/i/m/e$a<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/n/i/m/e$a;

    invoke-direct {v0}, Lc/b/a/n/i/m/e$a;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/m/e;->a:Lc/b/a/n/i/m/e$a;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/m/e;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Lc/b/a/n/i/m/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/m/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc/b/a/n/i/m/e;->e(Lc/b/a/n/i/m/e$a;)V

    .line 2
    iget-object v0, p0, Lc/b/a/n/i/m/e;->a:Lc/b/a/n/i/m/e$a;

    iput-object v0, p1, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    .line 3
    iget-object v0, v0, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    iput-object v0, p1, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    .line 4
    invoke-static {p1}, Lc/b/a/n/i/m/e;->g(Lc/b/a/n/i/m/e$a;)V

    return-void
.end method

.method private c(Lc/b/a/n/i/m/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/m/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc/b/a/n/i/m/e;->e(Lc/b/a/n/i/m/e$a;)V

    .line 2
    iget-object v0, p0, Lc/b/a/n/i/m/e;->a:Lc/b/a/n/i/m/e$a;

    iget-object v1, v0, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    iput-object v1, p1, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    .line 3
    iput-object v0, p1, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    .line 4
    invoke-static {p1}, Lc/b/a/n/i/m/e;->g(Lc/b/a/n/i/m/e$a;)V

    return-void
.end method

.method private static e(Lc/b/a/n/i/m/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/n/i/m/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    iget-object v1, p0, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    iput-object v1, v0, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    .line 2
    iget-object p0, p0, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    iput-object v0, p0, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    return-void
.end method

.method private static g(Lc/b/a/n/i/m/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/n/i/m/e$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    iput-object p0, v0, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    .line 2
    iget-object v0, p0, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    iput-object p0, v0, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/n/i/m/h;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/n/i/m/e$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/b/a/n/i/m/e$a;

    invoke-direct {v0, p1}, Lc/b/a/n/i/m/e$a;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lc/b/a/n/i/m/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lc/b/a/n/i/m/h;->a()V

    .line 5
    :goto_0
    invoke-direct {p0, v0}, Lc/b/a/n/i/m/e;->b(Lc/b/a/n/i/m/e$a;)V

    .line 6
    invoke-virtual {v0}, Lc/b/a/n/i/m/e$a;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lc/b/a/n/i/m/h;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/n/i/m/e$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/b/a/n/i/m/e$a;

    invoke-direct {v0, p1}, Lc/b/a/n/i/m/e$a;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, v0}, Lc/b/a/n/i/m/e;->c(Lc/b/a/n/i/m/e$a;)V

    .line 4
    iget-object v1, p0, Lc/b/a/n/i/m/e;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Lc/b/a/n/i/m/h;->a()V

    .line 6
    :goto_0
    invoke-virtual {v0, p2}, Lc/b/a/n/i/m/e$a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/e;->a:Lc/b/a/n/i/m/e$a;

    iget-object v0, v0, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    .line 2
    :goto_0
    iget-object v1, p0, Lc/b/a/n/i/m/e;->a:Lc/b/a/n/i/m/e$a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lc/b/a/n/i/m/e$a;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {v0}, Lc/b/a/n/i/m/e;->e(Lc/b/a/n/i/m/e$a;)V

    .line 5
    iget-object v1, p0, Lc/b/a/n/i/m/e;->b:Ljava/util/Map;

    invoke-static {v0}, Lc/b/a/n/i/m/e$a;->a(Lc/b/a/n/i/m/e$a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v0}, Lc/b/a/n/i/m/e$a;->a(Lc/b/a/n/i/m/e$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/n/i/m/h;

    invoke-interface {v1}, Lc/b/a/n/i/m/h;->a()V

    .line 7
    iget-object v0, v0, Lc/b/a/n/i/m/e$a;->d:Lc/b/a/n/i/m/e$a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupedLinkedMap( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lc/b/a/n/i/m/e;->a:Lc/b/a/n/i/m/e$a;

    iget-object v1, v1, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lc/b/a/n/i/m/e;->a:Lc/b/a/n/i/m/e$a;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    const/16 v3, 0x7b

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lc/b/a/n/i/m/e$a;->a(Lc/b/a/n/i/m/e$a;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lc/b/a/n/i/m/e$a;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "}, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, v1, Lc/b/a/n/i/m/e$a;->c:Lc/b/a/n/i/m/e$a;

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, " )"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
