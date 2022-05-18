.class Lcom/hpplay/common/asyncmanager/AsyncManager$1;
.super Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hpplay/common/asyncmanager/AsyncManager;->exeRunnable(Ljava/lang/Runnable;Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;Z)Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;


# direct methods
.method constructor <init>(Lcom/hpplay/common/asyncmanager/AsyncManager;Ljava/lang/Runnable;Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$1;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-direct {p0, p2, p3}, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;-><init>(Ljava/lang/Runnable;Lcom/hpplay/common/asyncmanager/AsyncRunnableListener;)V

    return-void
.end method


# virtual methods
.method protected onCancelled()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->onCancelled()V

    .line 140
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$1;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 141
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/hpplay/common/asyncmanager/AsyncRunnableJob;->onPostExecute(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lcom/hpplay/common/asyncmanager/AsyncManager$1;->this$0:Lcom/hpplay/common/asyncmanager/AsyncManager;

    invoke-static {v0, p0}, Lcom/hpplay/common/asyncmanager/AsyncManager;->access$000(Lcom/hpplay/common/asyncmanager/AsyncManager;Landroid/os/AsyncTask;)V

    .line 135
    return-void
.end method
