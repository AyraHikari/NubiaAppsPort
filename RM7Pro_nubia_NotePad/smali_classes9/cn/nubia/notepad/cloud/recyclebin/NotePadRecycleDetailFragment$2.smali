.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 171
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 175
    :try_start_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .line 176
    invoke-static {v2}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$400(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)I

    move-result v3

    const/16 v4, 0x32

    iget-object v5, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .line 177
    invoke-static {v5}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$500(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/utils/SimpleListener;

    move-result-object v5

    sget-object v6, Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    .line 175
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->list(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;IILcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    .line 179
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$2;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$600(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v7

    .line 181
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
