.class Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;,
        Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    }
.end annotation


# static fields
.field static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->c:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->c(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    return-void
.end method

.method private static b(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->c(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5

    invoke-static {v6}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->c(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object v6

    iget-object v6, v6, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->b:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/arch/lifecycle/a$a;

    invoke-static {v1, v8, v7, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->g(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/a$a;Ljava/lang/Class;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    array-length v2, v0

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_a

    aget-object v5, v0, v3

    const-class v6, Landroid/arch/lifecycle/e;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Landroid/arch/lifecycle/e;

    if-nez v6, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x1

    if-lez v8, :cond_5

    aget-object v8, v7, v4

    const-class v10, Landroid/arch/lifecycle/b;

    invoke-virtual {v8, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    move v8, v4

    :goto_3
    invoke-interface {v6}, Landroid/arch/lifecycle/e;->value()Landroid/arch/lifecycle/a$a;

    move-result-object v6

    array-length v10, v7

    const/4 v11, 0x2

    if-le v10, v9, :cond_8

    aget-object v8, v7, v9

    const-class v9, Landroid/arch/lifecycle/a$a;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Landroid/arch/lifecycle/a$a;->ON_ANY:Landroid/arch/lifecycle/a$a;

    if-ne v6, v8, :cond_6

    move v8, v11

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Second arg is supported only for ON_ANY value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter type. second arg must be an event"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    array-length v7, v7

    if-gt v7, v11, :cond_9

    new-instance v7, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    invoke-direct {v7, v8, v5}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;-><init>(ILjava/lang/reflect/Method;)V

    invoke-static {v1, v7, v6, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->g(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/a$a;Ljava/lang/Class;)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot have more than 2 params"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    invoke-direct {v0, v1}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;-><init>(Ljava/util/Map;)V

    sget-object v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->c:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static c(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;
    .locals 1

    sget-object v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b(Ljava/lang/Class;)Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V
    .locals 4

    :try_start_0
    iget v0, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->b:Ljava/lang/reflect/Method;

    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    aput-object p3, v3, v2

    invoke-virtual {p1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->b:Ljava/lang/reflect/Method;

    iget-object p3, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p1, p3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->b:Ljava/lang/reflect/Method;

    iget-object p2, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->a:Ljava/lang/Object;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    const-string p3, "Failed to call observer method"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private e(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V
    .locals 1

    iget-object v0, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->a:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->f(Ljava/util/List;Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V

    iget-object p1, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;->a:Ljava/util/Map;

    sget-object v0, Landroid/arch/lifecycle/a$a;->ON_ANY:Landroid/arch/lifecycle/a$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->f(Ljava/util/List;Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V

    return-void
.end method

.method private f(Ljava/util/List;Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            ">;",
            "Landroid/arch/lifecycle/b;",
            "Landroid/arch/lifecycle/a$a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;

    invoke-direct {p0, v1, p2, p3}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->d(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static g(Ljava/util/Map;Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;Landroid/arch/lifecycle/a$a;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            "Landroid/arch/lifecycle/a$a;",
            ">;",
            "Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;",
            "Landroid/arch/lifecycle/a$a;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/arch/lifecycle/a$a;

    if-eqz v0, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$b;->b:Ljava/lang/reflect/Method;

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already declared with different @OnLifecycleEvent value: previous"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " value "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", new value "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->b:Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;

    invoke-direct {p0, v0, p1, p2}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;->e(Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver$a;Landroid/arch/lifecycle/b;Landroid/arch/lifecycle/a$a;)V

    return-void
.end method
