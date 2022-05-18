.class public Lcom/hpplay/common/asyncmanager/AsyncCallableJob;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callable:Ljava/util/concurrent/Callable;

.field private callableListener:Lcom/hpplay/common/asyncmanager/AsyncCallableListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Lcom/hpplay/common/asyncmanager/AsyncCallableListener;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 15
    const-string v0, "AsyncCallableJob"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->TAG:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->callable:Ljava/util/concurrent/Callable;

    .line 22
    iput-object p2, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->callableListener:Lcom/hpplay/common/asyncmanager/AsyncCallableListener;

    .line 23
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 32
    :goto_0
    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "AsyncCallableJob"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 51
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->callableListener:Lcom/hpplay/common/asyncmanager/AsyncCallableListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->callableListener:Lcom/hpplay/common/asyncmanager/AsyncCallableListener;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/AsyncCallableListener;->onCallResult(ILjava/lang/Object;)V

    .line 54
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 38
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->callableListener:Lcom/hpplay/common/asyncmanager/AsyncCallableListener;

    if-eqz v0, :cond_0

    .line 40
    if-nez p1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->callableListener:Lcom/hpplay/common/asyncmanager/AsyncCallableListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/AsyncCallableListener;->onCallResult(ILjava/lang/Object;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->callableListener:Lcom/hpplay/common/asyncmanager/AsyncCallableListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/hpplay/common/asyncmanager/AsyncCallableListener;->onCallResult(ILjava/lang/Object;)V

    goto :goto_0
.end method
