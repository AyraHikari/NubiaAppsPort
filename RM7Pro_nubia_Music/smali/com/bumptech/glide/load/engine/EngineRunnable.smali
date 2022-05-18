.class Lcom/bumptech/glide/load/engine/EngineRunnable;
.super Ljava/lang/Object;
.source "EngineRunnable.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/executor/a;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/EngineRunnable$a;,
        Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/Priority;

.field private final b:Lcom/bumptech/glide/load/engine/EngineRunnable$a;

.field private final c:Lcom/bumptech/glide/load/engine/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/a",
            "<***>;"
        }
    .end annotation
.end field

.field private d:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/EngineRunnable$a;Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/Priority;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/EngineRunnable$a;",
            "Lcom/bumptech/glide/load/engine/a",
            "<***>;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$a;

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/a;

    .line 40
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->a:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->d:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 41
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->a:Lcom/bumptech/glide/Priority;

    .line 42
    return-void
.end method

.method private a(Lcom/bumptech/glide/load/engine/i;)V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$a;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/EngineRunnable$a;->a(Lcom/bumptech/glide/load/engine/i;)V

    .line 91
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->d:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$a;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/EngineRunnable$a;->b(Lcom/bumptech/glide/load/engine/EngineRunnable;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->b:Lcom/bumptech/glide/load/engine/EngineRunnable$a;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/EngineRunnable$a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->d:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    sget-object v1, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->a:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/bumptech/glide/load/engine/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->e()Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->f()Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Lcom/bumptech/glide/load/engine/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a;->a()Lcom/bumptech/glide/load/engine/i;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :goto_0
    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a;->b()Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    .line 123
    :cond_0
    return-object v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v2, "EngineRunnable"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    const-string v2, "EngineRunnable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception decoding result from cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private f()Lcom/bumptech/glide/load/engine/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/i",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a;->c()Lcom/bumptech/glide/load/engine/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->e:Z

    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->c:Lcom/bumptech/glide/load/engine/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/a;->d()V

    .line 47
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->a:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0}, Lcom/bumptech/glide/Priority;->ordinal()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 51
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->e:Z

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->d()Lcom/bumptech/glide/load/engine/i;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 71
    :goto_1
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/EngineRunnable;->e:Z

    if-eqz v2, :cond_4

    .line 72
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/i;->d()V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v2

    .line 60
    const-string v0, "EngineRunnable"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const-string v0, "EngineRunnable"

    const-string v3, "Out Of Memory Error decoding"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;

    invoke-direct {v0, v2}, Lcom/bumptech/glide/load/engine/ErrorWrappingGlideException;-><init>(Ljava/lang/Error;)V

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 69
    goto :goto_1

    .line 64
    :catch_1
    move-exception v0

    .line 65
    const-string v2, "EngineRunnable"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    const-string v2, "EngineRunnable"

    const-string v3, "Exception decoding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 68
    goto :goto_1

    .line 78
    :cond_4
    if-nez v0, :cond_5

    .line 79
    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/EngineRunnable;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 81
    :cond_5
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/EngineRunnable;->a(Lcom/bumptech/glide/load/engine/i;)V

    goto :goto_0
.end method
