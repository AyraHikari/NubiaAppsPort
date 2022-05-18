.class Lc/b/a/n/i/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lc/b/a/n/i/o/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/i/i$a;,
        Lc/b/a/n/i/i$b;
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/i;

.field private final b:Lc/b/a/n/i/i$a;

.field private final c:Lc/b/a/n/i/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/i/a<",
            "***>;"
        }
    .end annotation
.end field

.field private d:Lc/b/a/n/i/i$b;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lc/b/a/n/i/i$a;Lc/b/a/n/i/a;Lc/b/a/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/i$a;",
            "Lc/b/a/n/i/a<",
            "***>;",
            "Lc/b/a/i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/i/i;->b:Lc/b/a/n/i/i$a;

    .line 3
    iput-object p2, p0, Lc/b/a/n/i/i;->c:Lc/b/a/n/i/a;

    .line 4
    sget-object p1, Lc/b/a/n/i/i$b;->a:Lc/b/a/n/i/i$b;

    iput-object p1, p0, Lc/b/a/n/i/i;->d:Lc/b/a/n/i/i$b;

    .line 5
    iput-object p3, p0, Lc/b/a/n/i/i;->a:Lc/b/a/i;

    return-void
.end method

.method private c()Lc/b/a/n/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/i/k<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/b/a/n/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lc/b/a/n/i/i;->d()Lc/b/a/n/i/k;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-direct {p0}, Lc/b/a/n/i/i;->e()Lc/b/a/n/i/k;

    move-result-object v0

    return-object v0
.end method

.method private d()Lc/b/a/n/i/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/i/k<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/b/a/n/i/i;->c:Lc/b/a/n/i/a;

    invoke-virtual {v0}, Lc/b/a/n/i/a;->f()Lc/b/a/n/i/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "EngineRunnable"

    .line 2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception decoding result from cache: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lc/b/a/n/i/i;->c:Lc/b/a/n/i/a;

    invoke-virtual {v0}, Lc/b/a/n/i/a;->h()Lc/b/a/n/i/k;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private e()Lc/b/a/n/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/n/i/k<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/i;->c:Lc/b/a/n/i/a;

    invoke-virtual {v0}, Lc/b/a/n/i/a;->d()Lc/b/a/n/i/k;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/i;->d:Lc/b/a/n/i/i$b;

    sget-object v1, Lc/b/a/n/i/i$b;->a:Lc/b/a/n/i/i$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private g(Lc/b/a/n/i/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/i;->b:Lc/b/a/n/i/i$a;

    invoke-interface {v0, p1}, Lc/b/a/r/e;->d(Lc/b/a/n/i/k;)V

    return-void
.end method

.method private h(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/b/a/n/i/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lc/b/a/n/i/i$b;->b:Lc/b/a/n/i/i$b;

    iput-object p1, p0, Lc/b/a/n/i/i;->d:Lc/b/a/n/i/i$b;

    .line 3
    iget-object p1, p0, Lc/b/a/n/i/i;->b:Lc/b/a/n/i/i$a;

    invoke-interface {p1, p0}, Lc/b/a/n/i/i$a;->b(Lc/b/a/n/i/i;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/b/a/n/i/i;->b:Lc/b/a/n/i/i$a;

    invoke-interface {v0, p1}, Lc/b/a/r/e;->g(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/i;->a:Lc/b/a/i;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/n/i/i;->e:Z

    .line 2
    iget-object v0, p0, Lc/b/a/n/i/i;->c:Lc/b/a/n/i/a;

    invoke-virtual {v0}, Lc/b/a/n/i/a;->c()V

    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lc/b/a/n/i/i;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lc/b/a/n/i/i;->c()Lc/b/a/n/i/k;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    const-string v3, "EngineRunnable"

    .line 3
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Exception decoding"

    .line 4
    invoke-static {v3, v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lc/b/a/n/i/i;->e:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lc/b/a/n/i/k;->a()V

    :cond_2
    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 7
    invoke-direct {p0, v1}, Lc/b/a/n/i/i;->h(Ljava/lang/Exception;)V

    goto :goto_1

    .line 8
    :cond_4
    invoke-direct {p0, v0}, Lc/b/a/n/i/i;->g(Lc/b/a/n/i/k;)V

    :goto_1
    return-void
.end method
