.class public Lc/c/a/d/d/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/d/d/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/d/d/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc/c/a/d/d/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc/c/a/d/d/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/d/d/a;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    invoke-static {v4}, Lc/c/a/d/d/b;->q(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lc/c/a/d/b/f;->c(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lc/c/a/d/d/a;

    invoke-direct {v5, p0, v4}, Lc/c/a/d/d/a;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v5}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lc/c/a/d/d/b;->n(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Lc/c/a/d/d/e;

    invoke-direct {v5, p0, v4}, Lc/c/a/d/d/e;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v5}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lc/c/a/d/d/b;->m(Ljava/lang/reflect/Field;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Lc/c/a/d/d/d;

    invoke-direct {v5, p0, v4}, Lc/c/a/d/d/d;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v5}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lc/c/a/d/d/i;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lc/c/a/h/c;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method static declared-synchronized b(Ljava/lang/Class;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/d/d/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lc/c/a/d/d/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/c/a/d/d/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc/c/a/d/d/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lc/c/a/d/d/i;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lc/c/a/d/d/i;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v2, Lc/c/a/d/d/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static c(Ljava/lang/Class;Ljava/lang/String;)Lc/c/a/d/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lc/c/a/d/d/a;"
        }
    .end annotation

    invoke-static {p0}, Lc/c/a/d/d/i;->f(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc/c/a/d/d/i;->e(Ljava/lang/Class;)Lc/c/a/d/d/f;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lc/c/a/d/d/i;->b(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/d/d/a;

    return-object p0
.end method

.method public static d(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lc/c/a/d/a/h;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lc/c/a/d/a/h;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc/c/a/d/a/h;->execAfterTableCreated()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static declared-synchronized e(Ljava/lang/Class;)Lc/c/a/d/d/f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc/c/a/d/d/f;"
        }
    .end annotation

    const-class v0, Lc/c/a/d/d/i;

    monitor-enter v0

    :try_start_0
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lc/c/a/d/d/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc/c/a/d/d/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/d/d/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    const-class v7, Lc/c/a/d/a/e;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v1, v6

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    array-length v3, v2

    :goto_2
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    const-string v6, "id"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "_id"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    move-object v1, v5

    :cond_5
    if-nez v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/d/d/i;->e(Ljava/lang/Class;)Lc/c/a/d/d/f;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_6
    :try_start_2
    new-instance v2, Lc/c/a/d/d/f;

    invoke-direct {v2, p0, v1}, Lc/c/a/d/d/f;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    sget-object v1, Lc/c/a/d/d/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v2

    :cond_7
    :try_start_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "field \'id\' not found"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static f(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lc/c/a/d/d/i;->e(Ljava/lang/Class;)Lc/c/a/d/d/f;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static g(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lc/c/a/d/d/i;->e(Ljava/lang/Class;)Lc/c/a/d/d/f;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/c/a/d/d/a;->c()Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lc/c/a/d/a/h;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc/c/a/d/a/h;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lc/c/a/d/a/h;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lc/c/a/d/a/h;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
