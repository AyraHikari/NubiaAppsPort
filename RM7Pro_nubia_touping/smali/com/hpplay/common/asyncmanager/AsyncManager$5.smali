.class Lcom/hpplay/common/asyncmanager/AsyncManager$5;
.super Lcom/hpplay/common/asyncmanager/AsyncFileJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/common/asyncmanager/AsyncManager;->downLoad(Lcom/hpplay/common/asyncmanager/AsyncFileParameter;Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;Z)Lcom/hpplay/common/asyncmanager/AsyncFileJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;


# direct methods
.method constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncManager;Lcom/hpplay/common/asyncmanager/AsyncFileParameter;Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$5;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-direct {p0, p2, p3}, Lcom/hpplay/common/asyncmanager/AsyncFileJob;-><init>(Lcom/hpplay/common/asyncmanager/AsyncFileParameter;Lcom/hpplay/common/asyncmanager/AsyncFileRequestListener;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->onCancelled()V

    .line 358
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$5;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 359
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 351
    invoke-super {p0, p1}, Lcom/hpplay/common/asyncmanager/AsyncFileJob;->onPostExecute(Ljava/lang/Object;)V

    .line 352
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$5;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 353
    return-void
.end method
