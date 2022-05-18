.class public Lb/a/b/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/e/d$g;,
        Lb/a/b/e/d$f;,
        Lb/a/b/e/d$b;,
        Lb/a/b/e/d$e;,
        Lb/a/b/e/d$d;,
        Lb/a/b/e/d$c;
    }
.end annotation


# static fields
.field public static final d:Lb/a/b/e/d$d;


# instance fields
.field a:Lb/a/b/e/d$f;

.field b:Lb/a/b/e/d$f;

.field private final c:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb/a/b/e/d$e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/a/b/e/d$e;-><init>(Lb/a/b/e/d$a;)V

    sput-object v0, Lb/a/b/e/d;->d:Lb/a/b/e/d$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/a/b/e/d$f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lb/a/b/e/d$f;-><init>(I)V

    iput-object v0, p0, Lb/a/b/e/d;->a:Lb/a/b/e/d$f;

    .line 3
    new-instance v0, Lb/a/b/e/d$f;

    invoke-direct {v0, v1}, Lb/a/b/e/d$f;-><init>(I)V

    iput-object v0, p0, Lb/a/b/e/d;->b:Lb/a/b/e/d$f;

    .line 4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lb/a/b/e/c;

    const-string v1, "thread-pool"

    const/16 v2, 0xa

    invoke-direct {v9, v1, v2}, Lb/a/b/e/c;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x4

    const/16 v4, 0x8

    const-wide/16 v5, 0xa

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lb/a/b/e/d;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a(Lb/a/b/e/d$c;Lb/a/b/e/b;)Lb/a/b/e/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/a/b/e/d$c<",
            "TT;>;",
            "Lb/a/b/e/b<",
            "TT;>;)",
            "Lb/a/b/e/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/a/b/e/d$g;

    invoke-direct {v0, p0, p1, p2}, Lb/a/b/e/d$g;-><init>(Lb/a/b/e/d;Lb/a/b/e/d$c;Lb/a/b/e/b;)V

    .line 2
    iget-object p1, p0, Lb/a/b/e/d;->c:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
