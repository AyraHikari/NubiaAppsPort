.class Lcom/hpplay/sdk/source/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/hpplay/sdk/source/a/a;


# direct methods
.method constructor <init>(Lcom/hpplay/sdk/source/a/a;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/hpplay/sdk/source/a/a$a;->a:Lcom/hpplay/sdk/source/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 371
    :goto_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a$a;->a:Lcom/hpplay/sdk/source/a/a;

    invoke-static {v0}, Lcom/hpplay/sdk/source/a/a;->a(Lcom/hpplay/sdk/source/a/a;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->RUNNING:Lcom/hpplay/sdk/source/a/a$b;

    if-ne v0, v1, :cond_0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a$a;->a:Lcom/hpplay/sdk/source/a/a;

    invoke-static {v0}, Lcom/hpplay/sdk/source/a/a;->b(Lcom/hpplay/sdk/source/a/a;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 378
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/hpplay/sdk/source/a/a$a;->a:Lcom/hpplay/sdk/source/a/a;

    invoke-virtual {v0}, Lcom/hpplay/sdk/source/a/a;->h()Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    :catch_1
    move-exception v0

    .line 375
    const-string v1, "AbstractBlockingClient"

    invoke-static {v1, v0}, Lcom/hpplay/sdk/source/a/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 383
    :cond_0
    return-void
.end method
