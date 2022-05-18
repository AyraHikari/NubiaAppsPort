.class public Lc/c/a/g/f;
.super Ljava/util/AbstractQueue;
.source ""

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/g/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/concurrent/BlockingQueue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field transient c:Lc/c/a/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/g/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient d:Lc/c/a/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/g/a<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/locks/ReentrantLock;

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/concurrent/locks/ReentrantLock;

.field private final h:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lc/c/a/g/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/g/f;->f:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lc/c/a/g/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    if-lez p1, :cond_0

    iput p1, p0, Lc/c/a/g/f;->a:I

    new-instance p1, Lc/c/a/g/a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lc/c/a/g/a;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iput-object p1, p0, Lc/c/a/g/f;->d:Lc/c/a/g/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object v1, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    iput-object v0, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    iput-object v1, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    invoke-virtual {v1}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/c/a/g/a;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method private b(Lc/c/a/g/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/g/a<",
            "TE;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    :goto_0
    iget-object v1, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/g/a;->a()Lc/c/a/g/b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lc/c/a/g/a;->a()Lc/c/a/g/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-le v2, v3, :cond_0

    iput-object p1, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    iput-object v1, p1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lc/c/a/g/f;->d:Lc/c/a/g/a;

    iput-object p1, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    iput-object p1, p0, Lc/c/a/g/f;->d:Lc/c/a/g/a;

    :cond_2
    return-void
.end method

.method private declared-synchronized e(Lc/c/a/g/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/g/a<",
            "TE;>;)TE;"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lc/c/a/g/f;->a()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lc/c/a/g/f;->b(Lc/c/a/g/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lc/c/a/g/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lc/c/a/g/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method


# virtual methods
.method c()V
    .locals 1

    iget-object v0, p0, Lc/c/a/g/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lc/c/a/g/f;->c()V

    :try_start_0
    iget-object v0, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    :goto_0
    iget-object v1, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    if-eqz v1, :cond_0

    iput-object v0, v0, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lc/c/a/g/a;->c(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/c/a/g/f;->d:Lc/c/a/g/a;

    iput-object v0, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    iget v1, p0, Lc/c/a/g/f;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lc/c/a/g/f;->c()V

    :try_start_0
    iget-object v1, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    :cond_1
    iget-object v1, v1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    throw p1
.end method

.method d()V
    .locals 1

    iget-object v0, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lc/c/a/g/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lc/c/a/g/f;->drainTo(Ljava/util/Collection;I)I

    move-result p1

    return p1
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "-TE;>;I)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eq p1, p0, :cond_6

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v3, v0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, p2, :cond_2

    :try_start_1
    iget-object v5, v2, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    invoke-virtual {v5}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lc/c/a/g/a;->c(Ljava/lang/Object;)V

    iput-object v2, v2, Lc/c/a/g/a;->c:Lc/c/a/g/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    if-lez v3, :cond_1

    :try_start_2
    iput-object v2, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object p2, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v3

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p2

    iget v2, p0, Lc/c/a/g/f;->a:I

    if-ne p2, v2, :cond_1

    move v0, v4

    :cond_1
    throw p1

    :cond_2
    if-lez v3, :cond_3

    iput-object v2, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object p1, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v2, v3

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result p1

    iget v2, p0, Lc/c/a/g/f;->a:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v2, :cond_3

    move v0, v4

    :cond_3
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lc/c/a/g/f;->g()V

    :cond_4
    return p2

    :catchall_1
    move-exception p1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lc/c/a/g/f;->g()V

    :cond_5
    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method h(Lc/c/a/g/a;Lc/c/a/g/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/g/a<",
            "TE;>;",
            "Lc/c/a/g/a<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc/c/a/g/a;->c(Ljava/lang/Object;)V

    iget-object v0, p1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    iput-object v0, p2, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    iget-object v0, p0, Lc/c/a/g/f;->d:Lc/c/a/g/a;

    if-ne v0, p1, :cond_0

    iput-object p2, p0, Lc/c/a/g/f;->d:Lc/c/a/g/a;

    :cond_0
    iget-object p1, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p1

    iget p2, p0, Lc/c/a/g/f;->a:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :cond_1
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lc/c/a/g/f$a;

    invoke-direct {v0, p0}, Lc/c/a/g/f$a;-><init>(Lc/c/a/g/f;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lc/c/a/g/f;->a:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, -0x1

    new-instance v2, Lc/c/a/g/a;

    invoke-direct {v2, p1}, Lc/c/a/g/a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/c/a/g/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lc/c/a/g/f;->a:I

    if-ge v4, v5, :cond_1

    invoke-direct {p0, v2}, Lc/c/a/g/f;->e(Lc/c/a/g/a;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lc/c/a/g/f;->a:I

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v1, :cond_2

    invoke-direct {p0}, Lc/c/a/g/f;->f()V

    :cond_2
    if-ltz v1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    iget-object p4, p0, Lc/c/a/g/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lc/c/a/g/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    goto :goto_0

    :cond_1
    new-instance p2, Lc/c/a/g/a;

    invoke-direct {p2, p1}, Lc/c/a/g/a;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lc/c/a/g/f;->e(Lc/c/a/g/a;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    add-int/lit8 p2, p1, 0x1

    iget p3, p0, Lc/c/a/g/f;->a:I

    if-ge p2, p3, :cond_2

    iget-object p2, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez p1, :cond_3

    invoke-direct {p0}, Lc/c/a/g/f;->f()V

    :cond_3
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public peek()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v2, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object v2, v2, Lc/c/a/g/a;->c:Lc/c/a/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    iget-object v3, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-lez v4, :cond_1

    invoke-direct {p0, v2}, Lc/c/a/g/f;->e(Lc/c/a/g/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lc/c/a/g/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v0, p0, Lc/c/a/g/f;->a:I

    if-ne v1, v0, :cond_2

    invoke-direct {p0}, Lc/c/a/g/f;->g()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iget-object p3, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :cond_0
    :try_start_1
    iget-object v1, p0, Lc/c/a/g/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lc/c/a/g/f;->e(Lc/c/a/g/a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    iget-object p3, p0, Lc/c/a/g/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget p3, p0, Lc/c/a/g/f;->a:I

    if-ne p2, p3, :cond_3

    invoke-direct {p0}, Lc/c/a/g/f;->g()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public put(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lc/c/a/g/a;

    invoke-direct {v0, p1}, Lc/c/a/g/a;-><init>(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/c/a/g/f;->g:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v1, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    iget v3, p0, Lc/c/a/g/f;->a:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lc/c/a/g/f;->e(Lc/c/a/g/a;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lc/c/a/g/f;->a:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lc/c/a/g/f;->h:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-nez v0, :cond_2

    invoke-direct {p0}, Lc/c/a/g/f;->f()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remainingCapacity()I
    .locals 2

    iget v0, p0, Lc/c/a/g/f;->a:I

    iget-object v1, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lc/c/a/g/f;->c()V

    :try_start_0
    iget-object v1, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    :cond_1
    iget-object v2, v1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lc/c/a/g/f;->h(Lc/c/a/g/a;Lc/c/a/g/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    return p1

    :cond_2
    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    throw p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public take()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lc/c/a/g/f;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc/c/a/g/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lc/c/a/g/f;->e(Lc/c/a/g/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_1

    iget-object v3, p0, Lc/c/a/g/f;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget v1, p0, Lc/c/a/g/f;->a:I

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lc/c/a/g/f;->g()V

    :cond_2
    return-object v2

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lc/c/a/g/f;->c()V

    :try_start_0
    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object v2, v2, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    :goto_0
    if-eqz v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    iget-object v2, v2, Lc/c/a/g/a;->c:Lc/c/a/g/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/c/a/g/f;->c()V

    :try_start_0
    iget-object v0, p0, Lc/c/a/g/f;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lc/c/a/g/f;->c:Lc/c/a/g/a;

    iget-object v1, v1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1}, Lc/c/a/g/a;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v0

    iget-object v1, v1, Lc/c/a/g/a;->c:Lc/c/a/g/a;

    move v0, v2

    goto :goto_0

    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lc/c/a/g/f;->d()V

    throw p1
.end method
