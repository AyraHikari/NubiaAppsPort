.class public Lc/c/a/g/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final c:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/g/d$a;

    invoke-direct {v0}, Lc/c/a/g/d$a;-><init>()V

    sput-object v0, Lc/c/a/g/d;->c:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lc/c/a/g/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lc/c/a/g/f;

    invoke-direct {v6}, Lc/c/a/g/f;-><init>()V

    iput-object v6, p0, Lc/c/a/g/d;->a:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lc/c/a/g/d;->c:Ljava/util/concurrent/ThreadFactory;

    const/16 v2, 0x100

    const-wide/16 v3, 0x1

    move-object v0, v8

    move v1, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lc/c/a/g/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/g/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
