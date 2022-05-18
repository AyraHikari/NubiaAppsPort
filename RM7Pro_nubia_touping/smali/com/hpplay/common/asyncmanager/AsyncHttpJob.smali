.class public abstract Lcom/hpplay/common/asyncmanager/AsyncHttpJob;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private httpRequest:Lcom/hpplay/common/asyncmanager/HttpRequest;

.field public id:I

.field private inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

.field private mHandler:Landroid/os/Handler;

.field private mTimeOutRunnable:Ljava/lang/Runnable;

.field private method:I

.field private requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;


# direct methods
.method public constructor <init>(ILcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 16
    const-string v0, "AsyncHttpJob"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob$1;

    invoke-direct {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob$1;-><init>(Lcom/hpplay/common/asyncmanager/AsyncHttpJob;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->mTimeOutRunnable:Ljava/lang/Runnable;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->mHandler:Landroid/os/Handler;

    .line 36
    iput p1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->method:I

    .line 37
    iput-object p2, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    .line 38
    iput-object p3, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    .line 40
    return-void
.end method


# virtual methods
.method cancelTimeOut()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->mTimeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->mHandler:Landroid/os/Handler;

    .line 94
    :cond_0
    return-void
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/hpplay/common/asyncmanager/HttpRequest;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    invoke-direct {v0, v1, p0}, Lcom/hpplay/common/asyncmanager/HttpRequest;-><init>(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;Lcom/hpplay/common/asyncmanager/AsyncHttpJob;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->httpRequest:Lcom/hpplay/common/asyncmanager/HttpRequest;

    .line 45
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->mTimeOutRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v2, v2, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;

    iget v3, v3, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$In;->readTimeout:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    iget v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->method:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->httpRequest:Lcom/hpplay/common/asyncmanager/HttpRequest;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/HttpRequest;->doPost()Lcom/hpplay/common/asyncmanager/HttpResult;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->httpRequest:Lcom/hpplay/common/asyncmanager/HttpRequest;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/HttpRequest;->doGet()Lcom/hpplay/common/asyncmanager/HttpResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 80
    const-string v0, "AsyncHttpJob"

    const-string v1, "onCancelled"

    invoke-static {v0, v1}, Lcom/hpplay/common/utils/LeLog;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    const/4 v1, 0x2

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    .line 83
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-interface {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;->onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->cancelTimeOut()V

    .line 87
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    if-eqz v0, :cond_1

    .line 62
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/hpplay/common/asyncmanager/HttpResult;

    if-nez v0, :cond_2

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    const/4 v1, 0x1

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    .line 64
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-interface {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;->onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V

    .line 72
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->cancelTimeOut()V

    .line 75
    return-void

    .line 66
    :cond_2
    check-cast p1, Lcom/hpplay/common/asyncmanager/HttpResult;

    .line 67
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v1, p1, Lcom/hpplay/common/asyncmanager/HttpResult;->resultType:I

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->resultType:I

    .line 68
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget-object v1, p1, Lcom/hpplay/common/asyncmanager/HttpResult;->result:Ljava/lang/String;

    iput-object v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->result:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;

    iget v1, p1, Lcom/hpplay/common/asyncmanager/HttpResult;->responseCode:I

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncHttpParameter$Out;->responseCode:I

    .line 70
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;

    invoke-interface {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;->onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;)V

    goto :goto_0
.end method
