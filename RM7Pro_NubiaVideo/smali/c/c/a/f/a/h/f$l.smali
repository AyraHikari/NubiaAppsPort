.class Lc/c/a/f/a/h/f$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/f/a/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# instance fields
.field private a:Lc/c/a/f/a/h/f;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/c/a/f/a/h/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/f/a/h/f$l;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/a/f/a/h/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$l;->a:Lc/c/a/f/a/h/f;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lc/c/a/f/a/h/f$l;->a:Lc/c/a/f/a/h/f;

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public declared-synchronized b(Lc/c/a/f/a/h/f;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "GLThread"

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/h/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lc/c/a/f/a/h/f;->b(Lc/c/a/f/a/h/f;Z)Z

    .line 3
    iget-object v0, p0, Lc/c/a/f/a/h/f$l;->a:Lc/c/a/f/a/h/f;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lc/c/a/f/a/h/f$l;->a:Lc/c/a/f/a/h/f;

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Lc/c/a/f/a/h/f;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/h/f$l;->a:Lc/c/a/f/a/h/f;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 2
    :cond_1
    :goto_0
    iput-object p1, p0, Lc/c/a/f/a/h/f$l;->a:Lc/c/a/f/a/h/f;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return v1
.end method
