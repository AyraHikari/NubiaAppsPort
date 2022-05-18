.class Lcom/hpplay/common/asyncmanager/AsyncManager$2;
.super Lcom/hpplay/common/asyncmanager/AsyncCallableJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/common/asyncmanager/AsyncManager;->exeCallable(Ljava/util/concurrent/Callable;Lcom/hpplay/common/asyncmanager/AsyncCallableListener;Z)Lcom/hpplay/common/asyncmanager/AsyncCallableJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;


# direct methods
.method constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncManager;Ljava/util/concurrent/Callable;Lcom/hpplay/common/asyncmanager/AsyncCallableListener;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$2;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-direct {p0, p2, p3}, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;-><init>(Ljava/util/concurrent/Callable;Lcom/hpplay/common/asyncmanager/AsyncCallableListener;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->onCancelled()V

    .line 174
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$2;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 175
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/hpplay/common/asyncmanager/AsyncCallableJob;->onPostExecute(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$2;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 169
    return-void
.end method
