.class public Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private runnable:Ljava/lang/Runnable;

.field private runnableListener:Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    const-string v0, "AsyncRunnableJob"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->runnable:Ljava/lang/Runnable;

    .line 19
    iput-object p2, p0, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->runnableListener:Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;

    .line 20
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const-string v1, "AsyncRunnableJob"

    invoke-static {v1, v0}, Lcom/hpplay/common/utils/LeLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 43
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->runnableListener:Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->runnableListener:Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;->onRunResult(I)V

    .line 46
    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 35
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->runnableListener:Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->runnableListener:Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;->onRunResult(I)V

    .line 38
    :cond_0
    return-void
.end method
