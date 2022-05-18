.class Lcom/hpplay/common/asyncmanager/AsyncManager$6;
.super Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/common/asyncmanager/AsyncManager;->upload(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;Z)Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;


# direct methods
.method constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncManager;Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$6;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-direct {p0, p2, p3}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;-><init>(Lcom/hpplay/common/asyncmanager/AsyncUploadFileParameter;Lcom/hpplay/common/asyncmanager/AsyncUploadFileListener;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 385
    invoke-super {p0}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->onCancelled()V

    .line 386
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$6;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 387
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0, p1}, Lcom/hpplay/common/asyncmanager/AsyncUploadFileJob;->onPostExecute(Ljava/lang/Object;)V

    .line 380
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$6;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 381
    return-void
.end method
