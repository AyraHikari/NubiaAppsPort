.class public Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field public id:I

.field private inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

.field private requestListener:Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;

.field private uploadFileRequest:Lcom/hpplay/common/asyncmanager/UploadFileRequest;


# direct methods
.method public constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 12
    const-string v0, "AsyncUploadFileJob"

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->TAG:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    .line 22
    iput-object p2, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;

    .line 23
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 27
    new-instance v0, Lcom/hpplay/common/asyncmanager/UploadFileRequest;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    iget-object v1, v1, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    iget-object v2, v2, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->localPath:[Ljava/lang/String;

    iget-object v3, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    iget-object v3, v3, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    iget-object v3, v3, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->headParameter:Ljava/util/Map;

    iget-object v4, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    iget-object v4, v4, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->in:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;

    iget-object v4, v4, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$In;->httpMethod:Lcom/hpplay/common/asyncmanager/HttpMethod;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hpplay/common/asyncmanager/UploadFileRequest;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;Lcom/hpplay/common/asyncmanager/HttpMethod;)V

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->uploadFileRequest:Lcom/hpplay/common/asyncmanager/UploadFileRequest;

    .line 28
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->uploadFileRequest:Lcom/hpplay/common/asyncmanager/UploadFileRequest;

    invoke-virtual {v0}, Lcom/hpplay/common/asyncmanager/UploadFileRequest;->uploadFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 56
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;

    if-eqz v0, :cond_0

    .line 35
    if-nez p1, :cond_1

    .line 36
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;

    const/4 v1, 0x1

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->resultType:I

    .line 37
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    invoke-interface {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;->onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;)V

    .line 43
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;

    .line 45
    :cond_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;

    const/4 v1, 0x0

    iput v1, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->resultType:I

    .line 40
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    iget-object v0, v0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;->out:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;

    invoke-virtual {v0, p1}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter$Out;->setResult(Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->requestListener:Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;

    iget-object v1, p0, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->inParameter:Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;

    invoke-interface {v0, v1}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;->onRequestResult(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;)V

    goto :goto_0
.end method

.method protected onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 51
    return-void
.end method
