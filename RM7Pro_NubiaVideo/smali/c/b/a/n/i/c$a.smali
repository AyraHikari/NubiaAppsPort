.class Lc/b/a/n/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lc/b/a/n/i/e;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lc/b/a/n/i/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/i/c$a;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    iput-object p2, p0, Lc/b/a/n/i/c$a;->b:Ljava/util/concurrent/ExecutorService;

    .line 4
    iput-object p3, p0, Lc/b/a/n/i/c$a;->c:Lc/b/a/n/i/e;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/n/c;Z)Lc/b/a/n/i/d;
    .locals 7

    .line 1
    new-instance v6, Lc/b/a/n/i/d;

    iget-object v2, p0, Lc/b/a/n/i/c$a;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lc/b/a/n/i/c$a;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lc/b/a/n/i/c$a;->c:Lc/b/a/n/i/e;

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lc/b/a/n/i/d;-><init>(Lc/b/a/n/c;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;ZLc/b/a/n/i/e;)V

    return-object v6
.end method
