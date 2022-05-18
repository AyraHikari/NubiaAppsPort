.class Lc/b/a/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/o/g;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/b/a/o/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/o/a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/o/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/o/a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Lc/b/a/o/a;->c:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lc/b/a/o/h;->l()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lc/b/a/o/a;->b:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p1}, Lc/b/a/o/h;->a()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lc/b/a/o/h;->g()V

    :goto_0
    return-void
.end method

.method b()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/o/a;->c:Z

    .line 2
    iget-object v0, p0, Lc/b/a/o/a;->a:Ljava/util/Set;

    invoke-static {v0}, Lc/b/a/t/h;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/o/h;

    .line 3
    invoke-interface {v1}, Lc/b/a/o/h;->l()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method c()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/o/a;->b:Z

    .line 2
    iget-object v0, p0, Lc/b/a/o/a;->a:Ljava/util/Set;

    invoke-static {v0}, Lc/b/a/t/h;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/o/h;

    .line 3
    invoke-interface {v1}, Lc/b/a/o/h;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lc/b/a/o/a;->b:Z

    .line 2
    iget-object v0, p0, Lc/b/a/o/a;->a:Ljava/util/Set;

    invoke-static {v0}, Lc/b/a/t/h;->g(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/o/h;

    .line 3
    invoke-interface {v1}, Lc/b/a/o/h;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method
