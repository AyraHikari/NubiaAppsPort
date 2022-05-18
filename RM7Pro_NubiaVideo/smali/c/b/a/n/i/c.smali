.class public Lc/b/a/n/i/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/i/e;
.implements Lc/b/a/n/i/n/h$a;
.implements Lc/b/a/n/i/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/i/c$a;,
        Lc/b/a/n/i/c$d;,
        Lc/b/a/n/i/c$e;,
        Lc/b/a/n/i/c$b;,
        Lc/b/a/n/i/c$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/b/a/n/c;",
            "Lc/b/a/n/i/d;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/n/i/g;

.field private final c:Lc/b/a/n/i/n/h;

.field private final d:Lc/b/a/n/i/c$a;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/b/a/n/c;",
            "Ljava/lang/ref/WeakReference<",
            "Lc/b/a/n/i/h<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final f:Lc/b/a/n/i/l;

.field private final g:Lc/b/a/n/i/c$b;

.field private h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lc/b/a/n/i/h<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/b/a/n/i/n/h;Lc/b/a/n/i/n/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v9}, Lc/b/a/n/i/c;-><init>(Lc/b/a/n/i/n/h;Lc/b/a/n/i/n/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lc/b/a/n/i/g;Ljava/util/Map;Lc/b/a/n/i/c$a;Lc/b/a/n/i/l;)V

    return-void
.end method

.method constructor <init>(Lc/b/a/n/i/n/h;Lc/b/a/n/i/n/a$a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lc/b/a/n/i/g;Ljava/util/Map;Lc/b/a/n/i/c$a;Lc/b/a/n/i/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/n/h;",
            "Lc/b/a/n/i/n/a$a;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map<",
            "Lc/b/a/n/c;",
            "Lc/b/a/n/i/d;",
            ">;",
            "Lc/b/a/n/i/g;",
            "Ljava/util/Map<",
            "Lc/b/a/n/c;",
            "Ljava/lang/ref/WeakReference<",
            "Lc/b/a/n/i/h<",
            "*>;>;>;",
            "Lc/b/a/n/i/c$a;",
            "Lc/b/a/n/i/l;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc/b/a/n/i/c;->c:Lc/b/a/n/i/n/h;

    .line 4
    new-instance v0, Lc/b/a/n/i/c$b;

    invoke-direct {v0, p2}, Lc/b/a/n/i/c$b;-><init>(Lc/b/a/n/i/n/a$a;)V

    iput-object v0, p0, Lc/b/a/n/i/c;->g:Lc/b/a/n/i/c$b;

    if-nez p7, :cond_0

    .line 5
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 6
    :cond_0
    iput-object p7, p0, Lc/b/a/n/i/c;->e:Ljava/util/Map;

    if-nez p6, :cond_1

    .line 7
    new-instance p6, Lc/b/a/n/i/g;

    invoke-direct {p6}, Lc/b/a/n/i/g;-><init>()V

    .line 8
    :cond_1
    iput-object p6, p0, Lc/b/a/n/i/c;->b:Lc/b/a/n/i/g;

    if-nez p5, :cond_2

    .line 9
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 10
    :cond_2
    iput-object p5, p0, Lc/b/a/n/i/c;->a:Ljava/util/Map;

    if-nez p8, :cond_3

    .line 11
    new-instance p8, Lc/b/a/n/i/c$a;

    invoke-direct {p8, p3, p4, p0}, Lc/b/a/n/i/c$a;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lc/b/a/n/i/e;)V

    .line 12
    :cond_3
    iput-object p8, p0, Lc/b/a/n/i/c;->d:Lc/b/a/n/i/c$a;

    if-nez p9, :cond_4

    .line 13
    new-instance p9, Lc/b/a/n/i/l;

    invoke-direct {p9}, Lc/b/a/n/i/l;-><init>()V

    .line 14
    :cond_4
    iput-object p9, p0, Lc/b/a/n/i/c;->f:Lc/b/a/n/i/l;

    .line 15
    invoke-interface {p1, p0}, Lc/b/a/n/i/n/h;->e(Lc/b/a/n/i/n/h$a;)V

    return-void
.end method

.method private e(Lc/b/a/n/c;)Lc/b/a/n/i/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            ")",
            "Lc/b/a/n/i/h<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/c;->c:Lc/b/a/n/i/n/h;

    invoke-interface {v0, p1}, Lc/b/a/n/i/n/h;->c(Lc/b/a/n/c;)Lc/b/a/n/i/k;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Lc/b/a/n/i/h;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lc/b/a/n/i/h;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lc/b/a/n/i/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lc/b/a/n/i/h;-><init>(Lc/b/a/n/i/k;Z)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private f()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lc/b/a/n/i/h<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/c;->h:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/c;->h:Ljava/lang/ref/ReferenceQueue;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 4
    new-instance v1, Lc/b/a/n/i/c$d;

    iget-object v2, p0, Lc/b/a/n/i/c;->e:Ljava/util/Map;

    iget-object v3, p0, Lc/b/a/n/i/c;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lc/b/a/n/i/c$d;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lc/b/a/n/i/c;->h:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private h(Lc/b/a/n/c;Z)Lc/b/a/n/i/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            "Z)",
            "Lc/b/a/n/i/h<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object p2, p0, Lc/b/a/n/i/c;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lc/b/a/n/i/h;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lc/b/a/n/i/h;->b()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p2, p0, Lc/b/a/n/i/c;->e:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private i(Lc/b/a/n/c;Z)Lc/b/a/n/i/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            "Z)",
            "Lc/b/a/n/i/h<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lc/b/a/n/i/c;->e(Lc/b/a/n/c;)Lc/b/a/n/i/h;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p2}, Lc/b/a/n/i/h;->b()V

    .line 3
    iget-object v0, p0, Lc/b/a/n/i/c;->e:Ljava/util/Map;

    new-instance v1, Lc/b/a/n/i/c$e;

    invoke-direct {p0}, Lc/b/a/n/i/c;->f()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lc/b/a/n/i/c$e;-><init>(Lc/b/a/n/c;Lc/b/a/n/i/h;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method private static j(Ljava/lang/String;JLc/b/a/n/c;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lc/b/a/t/d;->a(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/n/c;Lc/b/a/n/i/h;)V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/n/i/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lc/b/a/n/i/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/b/a/n/i/c;->c:Lc/b/a/n/i/n/h;

    invoke-interface {v0, p1, p2}, Lc/b/a/n/i/n/h;->b(Lc/b/a/n/c;Lc/b/a/n/i/k;)Lc/b/a/n/i/k;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lc/b/a/n/i/c;->f:Lc/b/a/n/i/l;

    invoke-virtual {p1, p2}, Lc/b/a/n/i/l;->a(Lc/b/a/n/i/k;)V

    :goto_0
    return-void
.end method

.method public b(Lc/b/a/n/i/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/k<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/n/i/c;->f:Lc/b/a/n/i/l;

    invoke-virtual {v0, p1}, Lc/b/a/n/i/l;->a(Lc/b/a/n/i/k;)V

    return-void
.end method

.method public c(Lc/b/a/n/c;Lc/b/a/n/i/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            "Lc/b/a/n/i/h<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2, p1, p0}, Lc/b/a/n/i/h;->e(Lc/b/a/n/c;Lc/b/a/n/i/h$a;)V

    .line 3
    invoke-virtual {p2}, Lc/b/a/n/i/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/b/a/n/i/c;->e:Ljava/util/Map;

    new-instance v1, Lc/b/a/n/i/c$e;

    invoke-direct {p0}, Lc/b/a/n/i/c;->f()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lc/b/a/n/i/c$e;-><init>(Lc/b/a/n/c;Lc/b/a/n/i/h;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object p2, p0, Lc/b/a/n/i/c;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Lc/b/a/n/i/d;Lc/b/a/n/c;)V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/n/i/c;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/n/i/d;

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lc/b/a/n/i/c;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public g(Lc/b/a/n/c;IILc/b/a/n/h/c;Lc/b/a/q/b;Lc/b/a/n/g;Lc/b/a/n/k/j/c;Lc/b/a/i;ZLc/b/a/n/i/b;Lc/b/a/r/e;)Lc/b/a/n/i/c$c;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/n/c;",
            "II",
            "Lc/b/a/n/h/c<",
            "TT;>;",
            "Lc/b/a/q/b<",
            "TT;TZ;>;",
            "Lc/b/a/n/g<",
            "TZ;>;",
            "Lc/b/a/n/k/j/c<",
            "TZ;TR;>;",
            "Lc/b/a/i;",
            "Z",
            "Lc/b/a/n/i/b;",
            "Lc/b/a/r/e;",
            ")",
            "Lc/b/a/n/i/c$c;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p11

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    invoke-static {}, Lc/b/a/t/d;->b()J

    move-result-wide v3

    .line 3
    invoke-interface/range {p4 .. p4}, Lc/b/a/n/h/c;->getId()Ljava/lang/String;

    move-result-object v6

    .line 4
    iget-object v5, v0, Lc/b/a/n/i/c;->b:Lc/b/a/n/i/g;

    invoke-interface/range {p5 .. p5}, Lc/b/a/q/b;->a()Lc/b/a/n/e;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lc/b/a/q/b;->f()Lc/b/a/n/e;

    move-result-object v11

    invoke-interface/range {p5 .. p5}, Lc/b/a/q/b;->c()Lc/b/a/n/f;

    move-result-object v13

    invoke-interface/range {p5 .. p5}, Lc/b/a/q/b;->d()Lc/b/a/n/b;

    move-result-object v15

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v5 .. v15}, Lc/b/a/n/i/g;->a(Ljava/lang/String;Lc/b/a/n/c;IILc/b/a/n/e;Lc/b/a/n/e;Lc/b/a/n/g;Lc/b/a/n/f;Lc/b/a/n/k/j/c;Lc/b/a/n/b;)Lc/b/a/n/i/f;

    move-result-object v5

    .line 5
    invoke-direct {v0, v5, v1}, Lc/b/a/n/i/c;->i(Lc/b/a/n/c;Z)Lc/b/a/n/i/h;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "Engine"

    if-eqz v6, :cond_1

    .line 6
    invoke-interface {v2, v6}, Lc/b/a/r/e;->d(Lc/b/a/n/i/k;)V

    .line 7
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Loaded resource from cache"

    .line 8
    invoke-static {v1, v3, v4, v5}, Lc/b/a/n/i/c;->j(Ljava/lang/String;JLc/b/a/n/c;)V

    :cond_0
    return-object v7

    .line 9
    :cond_1
    invoke-direct {v0, v5, v1}, Lc/b/a/n/i/c;->h(Lc/b/a/n/c;Z)Lc/b/a/n/i/h;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 10
    invoke-interface {v2, v6}, Lc/b/a/r/e;->d(Lc/b/a/n/i/k;)V

    .line 11
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Loaded resource from active resources"

    .line 12
    invoke-static {v1, v3, v4, v5}, Lc/b/a/n/i/c;->j(Ljava/lang/String;JLc/b/a/n/c;)V

    :cond_2
    return-object v7

    .line 13
    :cond_3
    iget-object v6, v0, Lc/b/a/n/i/c;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/b/a/n/i/d;

    if-eqz v6, :cond_5

    .line 14
    invoke-virtual {v6, v2}, Lc/b/a/n/i/d;->e(Lc/b/a/r/e;)V

    .line 15
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Added to existing load"

    .line 16
    invoke-static {v1, v3, v4, v5}, Lc/b/a/n/i/c;->j(Ljava/lang/String;JLc/b/a/n/c;)V

    .line 17
    :cond_4
    new-instance v1, Lc/b/a/n/i/c$c;

    invoke-direct {v1, v2, v6}, Lc/b/a/n/i/c$c;-><init>(Lc/b/a/r/e;Lc/b/a/n/i/d;)V

    return-object v1

    .line 18
    :cond_5
    iget-object v6, v0, Lc/b/a/n/i/c;->d:Lc/b/a/n/i/c$a;

    invoke-virtual {v6, v5, v1}, Lc/b/a/n/i/c$a;->a(Lc/b/a/n/c;Z)Lc/b/a/n/i/d;

    move-result-object v1

    .line 19
    new-instance v6, Lc/b/a/n/i/a;

    iget-object v7, v0, Lc/b/a/n/i/c;->g:Lc/b/a/n/i/c$b;

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, v7

    move-object/from16 v25, p10

    move-object/from16 v26, p8

    invoke-direct/range {v16 .. v26}, Lc/b/a/n/i/a;-><init>(Lc/b/a/n/i/f;IILc/b/a/n/h/c;Lc/b/a/q/b;Lc/b/a/n/g;Lc/b/a/n/k/j/c;Lc/b/a/n/i/a$a;Lc/b/a/n/i/b;Lc/b/a/i;)V

    .line 20
    new-instance v7, Lc/b/a/n/i/i;

    move-object/from16 v10, p8

    invoke-direct {v7, v1, v6, v10}, Lc/b/a/n/i/i;-><init>(Lc/b/a/n/i/i$a;Lc/b/a/n/i/a;Lc/b/a/i;)V

    .line 21
    iget-object v6, v0, Lc/b/a/n/i/c;->a:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {v1, v2}, Lc/b/a/n/i/d;->e(Lc/b/a/r/e;)V

    .line 23
    invoke-virtual {v1, v7}, Lc/b/a/n/i/d;->m(Lc/b/a/n/i/i;)V

    .line 24
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Started new load"

    .line 25
    invoke-static {v6, v3, v4, v5}, Lc/b/a/n/i/c;->j(Ljava/lang/String;JLc/b/a/n/c;)V

    .line 26
    :cond_6
    new-instance v3, Lc/b/a/n/i/c$c;

    invoke-direct {v3, v2, v1}, Lc/b/a/n/i/c$c;-><init>(Lc/b/a/r/e;Lc/b/a/n/i/d;)V

    return-object v3
.end method

.method public k(Lc/b/a/n/i/k;)V
    .locals 1

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    .line 2
    instance-of v0, p1, Lc/b/a/n/i/h;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lc/b/a/n/i/h;

    invoke-virtual {p1}, Lc/b/a/n/i/h;->d()V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
