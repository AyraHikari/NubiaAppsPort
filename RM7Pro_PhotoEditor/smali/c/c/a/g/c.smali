.class public abstract Lc/c/a/g/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/g/c$c;,
        Lc/c/a/g/c$e;,
        Lc/c/a/g/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final g:Lc/c/a/g/c$d;


# instance fields
.field private final a:Lc/c/a/g/c$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/g/c$e<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lc/c/a/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/g/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/g/c$d;-><init>(Lc/c/a/g/c$a;)V

    sput-object v0, Lc/c/a/g/c;->g:Lc/c/a/g/c$d;

    new-instance v0, Lc/c/a/g/d;

    invoke-direct {v0}, Lc/c/a/g/d;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/g/c;->c:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc/c/a/g/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc/c/a/g/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lc/c/a/g/c$a;

    invoke-direct {v0, p0}, Lc/c/a/g/c$a;-><init>(Lc/c/a/g/c;)V

    iput-object v0, p0, Lc/c/a/g/c;->a:Lc/c/a/g/c$e;

    new-instance v1, Lc/c/a/g/c$b;

    invoke-direct {v1, p0, v0}, Lc/c/a/g/c$b;-><init>(Lc/c/a/g/c;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lc/c/a/g/c;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic b(Lc/c/a/g/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lc/c/a/g/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic c(Lc/c/a/g/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lc/c/a/g/c;->o(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic d(Lc/c/a/g/c;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/a/g/c;->p(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic e(Lc/c/a/g/c;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/a/g/c;->h(Ljava/lang/Object;)V

    return-void
.end method

.method private h(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lc/c/a/g/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lc/c/a/g/c;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/g/c;->l(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private o(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    sget-object v0, Lc/c/a/g/c;->g:Lc/c/a/g/c$d;

    new-instance v1, Lc/c/a/g/c$c;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lc/c/a/g/c$c;-><init>(Lc/c/a/g/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private p(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/g/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lc/c/a/g/c;->o(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs abstract f([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs g(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lc/c/a/g/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lc/c/a/g/c<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lc/c/a/g/c;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/g/c;->c:Z

    invoke-virtual {p0}, Lc/c/a/g/c;->m()V

    iget-object v0, p0, Lc/c/a/g/c;->a:Lc/c/a/g/c$e;

    iput-object p2, v0, Lc/c/a/g/c$e;->a:[Ljava/lang/Object;

    new-instance p2, Lc/c/a/g/g;

    iget-object v0, p0, Lc/c/a/g/c;->f:Lc/c/a/g/b;

    iget-object v1, p0, Lc/c/a/g/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-direct {p2, v0, v1}, Lc/c/a/g/g;-><init>(Lc/c/a/g/b;Ljava/lang/Runnable;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot execute task: the task is already executed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Z
    .locals 1

    iget-object v0, p0, Lc/c/a/g/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lc/c/a/g/c;->j()V

    return-void
.end method

.method protected l(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method protected m()V
    .locals 0

    return-void
.end method

.method protected varargs abstract n([Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation
.end method

.method protected final varargs q([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lc/c/a/g/c;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc/c/a/g/c;->g:Lc/c/a/g/c$d;

    const/4 v1, 0x2

    new-instance v2, Lc/c/a/g/c$c;

    invoke-direct {v2, p0, p1}, Lc/c/a/g/c$c;-><init>(Lc/c/a/g/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
