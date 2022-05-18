.class Lcom/hpplay/common/asyncmanager/AsyncManager$4;
.super Lcom/hpplay/common/asyncmanager/AsyncHttpJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/common/asyncmanager/AsyncManager;->doPostRequest(Lcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;Z)Lcom/hpplay/common/asyncmanager/AsyncHttpJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;


# direct methods
.method constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncManager;ILcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$4;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-direct {p0, p2, p3, p4}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;-><init>(ILcom/hpplay/common/asyncmanager/AsyncHttpParameter;Lcom/hpplay/common/asyncmanager/AsyncHttpRequestListener;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->onCancelled()V

    .line 331
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$4;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 332
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 324
    invoke-super {p0, p1}, Lcom/hpplay/common/asyncmanager/AsyncHttpJob;->onPostExecute(Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$4;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 326
    return-void
.end method
