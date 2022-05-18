.class public Lc/b/a/q/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lc/b/a/t/g;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/b/a/t/g;",
            "Lc/b/a/q/b<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/t/g;

    invoke-direct {v0}, Lc/b/a/t/g;-><init>()V

    sput-object v0, Lc/b/a/q/c;->b:Lc/b/a/t/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/b/a/q/c;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/q/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lc/b/a/q/b<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/q/c;->b:Lc/b/a/t/g;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lc/b/a/t/g;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 3
    iget-object p1, p0, Lc/b/a/q/c;->a:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/q/b;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lc/b/a/q/d;->g()Lc/b/a/q/b;

    move-result-object p1

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/q/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lc/b/a/q/b<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/q/c;->a:Ljava/util/Map;

    new-instance v1, Lc/b/a/t/g;

    invoke-direct {v1, p1, p2}, Lc/b/a/t/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
