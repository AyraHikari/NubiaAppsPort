.class Lc/c/a/a$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:J


# direct methods
.method private constructor <init>(Lc/c/a/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lc/c/a/a$d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc/c/a/a$d;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lc/c/a/a;Lc/c/a/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/c/a/a$d;-><init>(Lc/c/a/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/c/a/a$d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lc/c/a/a$d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 2

    iget-wide v0, p0, Lc/c/a/a$d;->b:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a$d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iput-wide p1, p0, Lc/c/a/a$d;->b:J

    :cond_0
    return-void
.end method
