.class public Lc/c/a/d/d/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/d/d/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lc/c/a/a;

.field public final b:Ljava/lang/String;

.field public final c:Lc/c/a/d/d/f;

.field public final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/d/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lc/c/a/d/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc/c/a/d/d/h;->g:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lc/c/a/a;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/d/d/h;->a:Lc/c/a/a;

    invoke-static {p2}, Lc/c/a/d/d/i;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/d/h;->b:Ljava/lang/String;

    invoke-static {p2}, Lc/c/a/d/d/i;->e(Ljava/lang/Class;)Lc/c/a/d/d/f;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/d/h;->c:Lc/c/a/d/d/f;

    invoke-static {p2}, Lc/c/a/d/d/i;->b(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/d/d/h;->d:Ljava/util/HashMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lc/c/a/d/d/h;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/d/d/a;

    invoke-virtual {p2, p0}, Lc/c/a/d/d/a;->j(Lc/c/a/d/d/h;)V

    instance-of v0, p2, Lc/c/a/d/d/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/d/d/h;->e:Ljava/util/HashMap;

    invoke-virtual {p2}, Lc/c/a/d/d/a;->d()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lc/c/a/d/d/d;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized a(Lc/c/a/a;Ljava/lang/Class;)Lc/c/a/d/d/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc/c/a/d/d/h;"
        }
    .end annotation

    const-class v0, Lc/c/a/d/d/h;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc/c/a/a;->o()Lc/c/a/a$b;

    move-result-object v2

    invoke-virtual {v2}, Lc/c/a/a$b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lc/c/a/d/d/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/d/d/h;

    if-nez v3, :cond_0

    new-instance v3, Lc/c/a/d/d/h;

    invoke-direct {v3, p0, p1}, Lc/c/a/d/d/h;-><init>(Lc/c/a/a;Ljava/lang/Class;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized c(Lc/c/a/a;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lc/c/a/d/d/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/c/a/d/d/h;->g:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/a/d/d/h;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lc/c/a/d/d/h;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc/c/a/a;->o()Lc/c/a/a$b;

    move-result-object v4

    invoke-virtual {v4}, Lc/c/a/a$b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lc/c/a/d/d/h;->g:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/a/d/d/h;->f:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lc/c/a/d/d/h;->f:Z

    return-void
.end method
