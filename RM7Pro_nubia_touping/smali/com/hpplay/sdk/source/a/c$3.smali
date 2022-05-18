.class Lcom/hpplay/sdk/source/a/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/sdk/source/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/a/c;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/a/c;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/hpplay/sdk/source/a/c$3;->a:Lcom/hpplay/sdk/source/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c$3;->a:Lcom/hpplay/sdk/source/a/c;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/c;->a(Lcom/hpplay/sdk/source/a/c;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 149
    const-string v0, "AbstractBlockingClient"

    const-string v1, "start IM server"

    invoke-static {v0, v1}, Lcom/hpplay/sdk/source/a/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c$3;->a:Lcom/hpplay/sdk/source/a/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/a/c;->c(Lcom/hpplay/sdk/source/a/c;)Lcom/hpplay/sdk/source/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/c$3;->a:Lcom/hpplay/sdk/source/a/c;

    invoke-static {v0}, Lcom/hpplay/sdk/source/a/c;->d(Lcom/hpplay/sdk/source/a/c;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/hpplay/sdk/source/a/c$3;->a:Lcom/hpplay/sdk/source/a/c;

    invoke-static {v1}, Lcom/hpplay/sdk/source/a/c;->c(Lcom/hpplay/sdk/source/a/c;)Lcom/hpplay/sdk/source/a/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v1, "IMEntrance"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
