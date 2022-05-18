.class public Lc/b/a/n/j/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lc/b/a/n/j/l;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lc/b/a/n/j/m;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lc/b/a/n/j/l;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/j/c$a;

    invoke-direct {v0}, Lc/b/a/n/j/c$a;-><init>()V

    sput-object v0, Lc/b/a/n/j/c;->d:Lc/b/a/n/j/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/n/j/c;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/n/j/c;->b:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/n/j/c;->c:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lc/b/a/n/j/l<",
            "TT;TY;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/j/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lc/b/a/n/j/c;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/n/j/c;->d:Lc/b/a/n/j/l;

    invoke-direct {p0, p1, p2, v0}, Lc/b/a/n/j/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/l;)V

    return-void
.end method

.method private d(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/j/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)",
            "Lc/b/a/n/j/l<",
            "TT;TY;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/j/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/n/j/l;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private e(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/j/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)",
            "Lc/b/a/n/j/m<",
            "TT;TY;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/j/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/n/j/m;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 3
    iget-object v1, p0, Lc/b/a/n/j/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 4
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lc/b/a/n/j/c;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/n/j/m;

    if-eqz v0, :cond_1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/j/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;)",
            "Lc/b/a/n/j/l<",
            "TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lc/b/a/n/j/c;->d(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/j/l;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    sget-object p1, Lc/b/a/n/j/c;->d:Lc/b/a/n/j/l;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    monitor-exit p0

    return-object p1

    .line 4
    :cond_0
    monitor-exit p0

    return-object v0

    .line 5
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lc/b/a/n/j/c;->e(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/n/j/m;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v0, p0, Lc/b/a/n/j/c;->c:Landroid/content/Context;

    invoke-interface {v1, v0, p0}, Lc/b/a/n/j/m;->a(Landroid/content/Context;Lc/b/a/n/j/c;)Lc/b/a/n/j/l;

    move-result-object v0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lc/b/a/n/j/c;->b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/l;)V

    goto :goto_0

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2}, Lc/b/a/n/j/c;->c(Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/n/j/m;)Lc/b/a/n/j/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lc/b/a/n/j/m<",
            "TT;TY;>;)",
            "Lc/b/a/n/j/m<",
            "TT;TY;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/b/a/n/j/c;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lc/b/a/n/j/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Lc/b/a/n/j/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/n/j/m;

    if-eqz p1, :cond_2

    .line 6
    iget-object p2, p0, Lc/b/a/n/j/c;->a:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 7
    invoke-interface {p3, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    .line 8
    :cond_2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
