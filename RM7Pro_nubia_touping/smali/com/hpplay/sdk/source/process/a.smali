.class public Lcom/hpplay/sdk/source/process/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BrowserThread"

.field private static final b:I = 0x0

.field private static final c:I = 0x1


# instance fields
.field private d:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/hpplay/sdk/source/process/a;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 23
    iput-boolean p1, p0, Lcom/hpplay/sdk/source/process/a;->e:Z

    .line 24
    iput-boolean p2, p0, Lcom/hpplay/sdk/source/process/a;->f:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/process/a;->g:Z

    .line 26
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/a;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const-string v1, "BrowserThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/a;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v1, "BrowserThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hpplay/sdk/source/process/a;->g:Z

    .line 48
    invoke-virtual {p0}, Lcom/hpplay/sdk/source/process/a;->interrupt()V

    .line 49
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 53
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 54
    :goto_0
    iget-boolean v0, p0, Lcom/hpplay/sdk/source/process/a;->g:Z

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/process/a;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 57
    const-string v1, "BrowserThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "browser flag => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " b size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/hpplay/sdk/source/process/a;->d:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hpplay/sdk/source/d/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    if-nez v0, :cond_1

    .line 59
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->c()V

    .line 60
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/hpplay/sdk/source/process/a;->e:Z

    iget-boolean v2, p0, Lcom/hpplay/sdk/source/process/a;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/hpplay/sdk/source/process/c;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    const-string v1, "BrowserThread"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/d/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :cond_0
    return-void

    .line 62
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/hpplay/sdk/source/process/c;->b()Lcom/hpplay/sdk/source/process/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/process/c;->c()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
