.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$9;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->clearRecycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener",
        "<",
        "Lcn/nubia/cloud/utils/NBResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 391
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$9;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/utils/NBResponse;)V
    .locals 2
    .param p1, "ret"    # Lcn/nubia/cloud/utils/NBResponse;

    .prologue
    .line 394
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$9;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1400(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    .line 395
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 396
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 397
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$9;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    check-cast p1, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$9;->onComplete(Lcn/nubia/cloud/utils/NBResponse;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3ef

    .line 402
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 403
    .local v0, "msg":Landroid/os/Message;
    if-ne p1, v1, :cond_0

    .line 404
    iput v1, v0, Landroid/os/Message;->what:I

    .line 409
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$9;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 410
    return-void

    .line 406
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 407
    const v1, 0x7f0a003a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
