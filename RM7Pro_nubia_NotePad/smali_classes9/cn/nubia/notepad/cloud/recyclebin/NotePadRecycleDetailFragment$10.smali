.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->clearRecycle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

.field final synthetic val$listener:Lcn/nubia/cloud/utils/SimpleListener;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 413
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    iput-object p2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 418
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v2}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;->val$listener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->clear(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;Lcn/nubia/cloud/utils/SimpleListener;)V

    .line 419
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$10;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
