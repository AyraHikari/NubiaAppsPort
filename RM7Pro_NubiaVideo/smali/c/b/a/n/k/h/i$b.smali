.class Lc/b/a/n/k/h/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/k/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/b/a/l/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lc/b/a/t/h;->c(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/n/k/h/i$b;->a:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public declared-synchronized a([B)Lc/b/a/l/d;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/b/a/n/k/h/i$b;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/l/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lc/b/a/l/d;

    invoke-direct {v0}, Lc/b/a/l/d;-><init>()V

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lc/b/a/l/d;->o([B)Lc/b/a/l/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lc/b/a/l/d;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lc/b/a/l/d;->a()V

    .line 2
    iget-object v0, p0, Lc/b/a/n/k/h/i$b;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
